Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C4B16FCCB6
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 19:27:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234686AbjEIR1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 13:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234680AbjEIR1X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 13:27:23 -0400
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19BEB1BE6
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 10:27:22 -0700 (PDT)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
        by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349GhhAF027534;
        Tue, 9 May 2023 17:27:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=dNvRW/FXONhZJY9hxa7gonsrUWJxHt1ejVCocMTfTBk=;
 b=ffQQhpowDIXIGJAg4MZkS6TCpq08Ad2W3aCrQ6VRuGbjZPpfE5N3Q/m6akjyYpXg/rKV
 RFmBI8O4KC4HF7cMANwSe6Hk4VBfKuJW9iBwqieBNQ8Yp4RuKZuFYG25zUhiM4l03FPS
 u7r1pxDtZGxshB4NRPmkBwIIOTtdFnFxhB+pyTVCgfbsDmiLLdky0+8gTBD+lRRL43ue
 8yc48p5IDV4+PtPMFX5TcGknIS2JodJQ6hGPPKQhtHpT6VR64EJ+b+Rx9I8hXkBJcOVn
 +JHFJRkn6RgNW5lH32rhqpJ3l0kpxfEkAJaeTw/QjNgBUabylgM/fbB89E1X+Ldozbr7 pQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
        by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qf781jgcb-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 09 May 2023 17:27:17 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
        by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 349HRGWZ013748
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 9 May 2023 17:27:16 GMT
Received: from [10.216.46.139] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 9 May 2023
 10:27:14 -0700
Message-ID: <ba1321d3-c029-04ce-0d1b-18c7740528d8@quicinc.com>
Date:   Tue, 9 May 2023 22:57:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Suggestion regarding usage of <Volt, Amp> in yaml
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Pratham Pratap <quic_ppratap@quicinc.com>,
        Udipto Goswami <quic_ugoswami@quicinc.com>
References: <039b19fa-a497-f237-55b3-467b4eda27ea@quicinc.com>
 <6672ff2e-3f3a-a2fa-df82-57628884aabd@quicinc.com>
 <2f927eb1-9088-06b3-a641-b15f6951a087@linaro.org>
Content-Language: en-US
From:   Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <2f927eb1-9088-06b3-a641-b15f6951a087@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: modLdoUBzhUSN1vT70FG8VoyUSM4bhM9
X-Proofpoint-ORIG-GUID: modLdoUBzhUSN1vT70FG8VoyUSM4bhM9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_10,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 suspectscore=0 clxscore=1015 mlxlogscore=713 malwarescore=0 mlxscore=0
 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090145
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/9/2023 8:38 PM, Krzysztof Kozlowski wrote:
> On 09/05/2023 13:12, Krishna Kurapati PSSNV wrote:
>>
>>
>> On 5/9/2023 4:19 PM, Krishna Kurapati PSSNV wrote:
>>> Hi Team,
>>>
>>>    We are trying to read an array of <Volt, Amp> values from DT and use
>>> it in one of our downstream drivers and needed to implement the same in
>>> yaml file.
>>>
>>> The below is the format we want to implement in our DT:
>>>
>>>     3           qcom,default-sink-caps = <5000 2000>, /* 5V , 2A */
>>>     2                                    <3000 1500>,
>>>     1                                    <2300 2500>;
>>>
>>>    Is there any ref/schema available for this kind of array ?
> 
> uint32-matrix
> 
> Best regards,
> Krzysztof
> 

Thanks Krzysztof,

  Thanks for the suggestion. Will try it out.

Regards,
Krishna,
