Return-Path: <devicetree+bounces-326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 448757A1360
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 03:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 024662824DF
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 01:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D61658;
	Fri, 15 Sep 2023 01:58:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630F536A
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 01:58:43 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE022722;
	Thu, 14 Sep 2023 18:58:42 -0700 (PDT)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38F1wd9K012149;
	Fri, 15 Sep 2023 01:58:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=HoCgcgl+aCgjFCVJXKNMCqYwXYxwcfuRMm+pt4uqlts=;
 b=d1Z2zIoYgzta+acURONtsnjrcq07hlezAtFY4yZTXu4Mu9NEh5HS6Sp8da39wkaVObCA
 /JWfPQ6wyfTcczmQrxlp6ZpibxxwTapsbFrqmQTpzc08vKko8A4+XCIOaifZpDkx3Ze0
 wN7BWnrAkb9DtOr0s1fmHDBOhX5wdlGo4jJGC3MRKQpcMnQyCZaX7pHXQ69NsBObjXPE
 ZfqqVvWyilVT19cYO1TCipzA+oWTZDh+kncSf2X0XmT6ILIohHs/T25qEDFFaeTeTVxI
 kZrxlFWQq30wjwmyadtH8OrlaAiXzIE/uL5zOiIGd4GFAxYuGmGYQPHtRWY6hFP7AfaX lA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t4e2ag01s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Sep 2023 01:58:38 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38F1wbIa006657
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Sep 2023 01:58:37 GMT
Received: from tengfan2-gv.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Thu, 14 Sep 2023 18:58:30 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
To: <andersson@kernel.org>, <agross@kernel.org>, <konrad.dybcio@linaro.org>,
        <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-gpio@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_tsoni@quicinc.com>, <quic_shashim@quicinc.com>,
        <quic_kaushalk@quicinc.com>, <quic_tdas@quicinc.com>,
        <quic_tingweiz@quicinc.com>, <quic_aiquny@quicinc.com>,
        <kernel@quicinc.com>, Tengfei Fan <quic_tengfan@quicinc.com>
Subject: [PATCH v2 0/2] pinctl: qcom: Add SM4450 pinctrl driver 
Date: Fri, 15 Sep 2023 09:58:06 +0800
Message-ID: <20230915015808.18296-1-quic_tengfan@quicinc.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: r661Y_ZTWe3kufpvvqOZzY48f-h5VH7U
X-Proofpoint-ORIG-GUID: r661Y_ZTWe3kufpvvqOZzY48f-h5VH7U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-15_02,2023-09-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 suspectscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 mlxlogscore=706 adultscore=0
 phishscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309150015

Add Sm4450 pinctrl driver for support enable uart console.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
---
v1 -> v2:
  - update right platform name
  - update gpio-reserved-ranges have right maxItems
  - update gpio-line-names have right maxItems
  - add min/maxItems for pins properties
  - redo dt_binding_check check
  - delete reserved gpios setting
  - combine separate pinctrl functions

previous discussion here:
[1] https://lore.kernel.org/linux-arm-msm/20230908063843.26835-1-quic_tengfan@quicinc.com/

Tengfei Fan (2):
  dt-bindings: pinctrl: qcom: Add SM4450 pinctrl
  pinctrl: qcom: Add SM4450 pinctrl driver

 .../bindings/pinctrl/qcom,sm4450-tlmm.yaml    |  132 +++
 drivers/pinctrl/qcom/Kconfig.msm              |    8 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-sm4450.c         | 1013 +++++++++++++++++
 4 files changed, 1154 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sm4450.c


base-commit: 98897dc735cf6635f0966f76eb0108354168fb15
-- 
2.17.1


