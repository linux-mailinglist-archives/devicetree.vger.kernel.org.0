Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA8B56FC4BC
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 13:13:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229664AbjEILN2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 07:13:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231467AbjEILN0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 07:13:26 -0400
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48EDB7AAE
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 04:13:05 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
        by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34980ISv016295;
        Tue, 9 May 2023 11:12:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : from : to : cc : references : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=dS5NEP4epbrJOHJR436gfigjzAvJuQivHfboQh0Ud1w=;
 b=l3m0EtEuD21PInWyUaD/DjU1YImI0/aQeuSYg8Uo5E6Z7GvSYhuZKIWE3n1g/gWNavWb
 pwWVYWVDmVkxILIC30tXi8c6yI1vfJF/UBG55djVxqVjCIda92s6uxCj6BVlM+dGflwE
 0oPNMQK7O/gRiRgIvnsYrqEN+gHUmGjeMNNp3zIkCVysGxXZ+H9Z7SbHYa5j18ckgyuH
 BR0+KczrSP1DWcu2EcXephIbrb0lg1Awq90f2/f7O/kUha2GUIeJ4F3Yvqs5g/WqL6JV
 i3x0ezakWdfI8GdYdkJujHGFB1SJitHVfDxWazxWdivd3Lm7DIQPN/29oBMNYAnUbRrr IQ== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
        by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qf77h9hqy-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 09 May 2023 11:12:46 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
        by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 349BCkxt014165
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 9 May 2023 11:12:46 GMT
Received: from [10.217.216.230] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 9 May 2023
 04:12:43 -0700
Message-ID: <6672ff2e-3f3a-a2fa-df82-57628884aabd@quicinc.com>
Date:   Tue, 9 May 2023 16:42:40 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Suggestion regarding usage of <Volt, Amp> in yaml
From:   Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Pratham Pratap <quic_ppratap@quicinc.com>,
        Udipto Goswami <quic_ugoswami@quicinc.com>
References: <039b19fa-a497-f237-55b3-467b4eda27ea@quicinc.com>
Content-Language: en-US
In-Reply-To: <039b19fa-a497-f237-55b3-467b4eda27ea@quicinc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 29FplHdel730RCY_79dOPEc6jT66sMoS
X-Proofpoint-ORIG-GUID: 29FplHdel730RCY_79dOPEc6jT66sMoS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_07,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=812
 adultscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090089
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/9/2023 4:19 PM, Krishna Kurapati PSSNV wrote:
> Hi Team,
> 
>   We are trying to read an array of <Volt, Amp> values from DT and use 
> it in one of our downstream drivers and needed to implement the same in 
> yaml file.
> 
> The below is the format we want to implement in our DT:
> 
>    3           qcom,default-sink-caps = <5000 2000>, /* 5V , 2A */
>    2                                    <3000 1500>,
>    1                                    <2300 2500>;
> 
>   Is there any ref/schema available for this kind of array ?
> 
> I believe when we wanted to use basis points as reference for [1], we 
> had to modify dt-schema for the same. Is something like that needed for 
> the above <Volt, Amp> requirement as well or is there some ref available 
> for use.
> 
> [1]: https://github.com/devicetree-org/dt-schema/pull/73
> 
My bad, gave the link for dt-schema pull request adding basis points.

Here is the patch that used it in yaml:
https://lore.kernel.org/all/1662480933-12326-2-git-send-email-quic_kriskura@quicinc.com/

Regards,
Krishna,
