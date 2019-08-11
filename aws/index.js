module.exports.handler = async (event, context) => {
  console.log(event);
  const result = await Promise.resolve("Testing!!");
  return result;
};
