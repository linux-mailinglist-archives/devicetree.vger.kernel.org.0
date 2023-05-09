Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C7296FC435
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 12:49:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233624AbjEIKt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 06:49:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234584AbjEIKtY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 06:49:24 -0400
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CECE94ECB
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 03:49:23 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
        by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3497lWDe009769;
        Tue, 9 May 2023 10:49:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : to : cc : from : subject : content-type :
 content-transfer-encoding; s=qcppdkim1;
 bh=BCeZ/E1VqoQKT0irnwgmwVNobiLFCOAuDwM/Kjtrq5A=;
 b=SKMol01bIK63v6VsJciVXy1dc5BoQNY4m0lbS4vfIN4844YBh42lC4XIXb+1PlmSQxnU
 GWYLxfP6IwtDibCaFcvQ/x912gfBi+Br7M9Ww83B1EdqlH9kuY1nUEyXp57JzywIsh7U
 X39/lEpb3uIw3QIG8oS8se62Vwa8PUtPuQ7OzbGLN0/BmC5/4MHG4cyT67zMlDJ63gCI
 oZ1VkbBXRAJT2c2iIKMDUyN+CnphPfCm4dDHXZOi8pn7NvqB1ezRiojayjItFP/5vZ91
 S54O4ot3asplKD2VGBsvya336NUj+xQsto5qSt56yYqusPO3M2cISXnHgiO1d6yio/hq pA== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
        by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qf77f1fpn-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 09 May 2023 10:49:21 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
        by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 349AnKXB022746
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 9 May 2023 10:49:20 GMT
Received: from [10.217.216.230] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 9 May 2023
 03:49:18 -0700
Message-ID: <039b19fa-a497-f237-55b3-467b4eda27ea@quicinc.com>
Date:   Tue, 9 May 2023 16:19:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Pratham Pratap <quic_ppratap@quicinc.com>,
        Udipto Goswami <quic_ugoswami@quicinc.com>
From:   Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Subject: Suggestion regarding usage of <Volt, Amp> in yaml
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: yJfZrWKHEQWkM3QEjqquaUDwCFj1GQCq
X-Proofpoint-GUID: yJfZrWKHEQWkM3QEjqquaUDwCFj1GQCq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_06,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 phishscore=0
 mlxlogscore=699 suspectscore=0 malwarescore=0 adultscore=0 impostorscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090086
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Team,

  We are trying to read an array of <Volt, Amp> values from DT and use 
it in one of our downstream drivers and needed to implement the same in 
yaml file.

The below is the format we want to implement in our DT:

   3           qcom,default-sink-caps = <5000 2000>, /* 5V , 2A */
   2                                    <3000 1500>,
   1                                    <2300 2500>;

  Is there any ref/schema available for this kind of array ?

I believe when we wanted to use basis points as reference for [1], we 
had to modify dt-schema for the same. Is something like that needed for 
the above <Volt, Amp> requirement as well or is there some ref available 
for use.

[1]: https://github.com/devicetree-org/dt-schema/pull/73

Regards,
Krishna,
