Return-Path: <devicetree+bounces-632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B8D7A23FC
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 18:55:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D7DA282212
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF60125B6;
	Fri, 15 Sep 2023 16:55:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1121094C
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 16:55:05 +0000 (UTC)
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51AA9268A;
	Fri, 15 Sep 2023 09:55:04 -0700 (PDT)
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38FEp6ul025263;
	Fri, 15 Sep 2023 16:54:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : subject :
 date : message-id : mime-version : content-transfer-encoding; s=pps0720;
 bh=g/1WTikRU56v1hEKCp/IzClZjRybPwB+VlLaQvKpdgs=;
 b=o6SBsbN8Gtcd6Rg58dBJG0RMnS+wELdymaUwKTbFBX10A9Qijcwb8v8l3WGdbxCKkGT2
 l8vJlIgjUFhYcuOL0ZrSyN3ycLAj5ct2mMJ47XX7vXzV4IiZYcfj1ct3zF1+9S45kzfw
 ODgK0iA3uMRX4UpCGHnxXR4X0aocVZEoOyXc3+CZcFE942+YXLRkm4J005RN4nBvYzkJ
 qfZQhs+KPCMdYwiCHybaS6XkMP2ktkHlWLETnzl83+VH53QQVZD6agf5ugUlxsl0AHXr
 nYvP7ltDwCEJIaSGecEstYkWFLX7bH1WO+n1a4I8foRGhuqmgiQweiNSjrgunhlbSlwp 3g== 
Received: from p1lg14879.it.hpe.com ([16.230.97.200])
	by mx0a-002e3701.pphosted.com (PPS) with ESMTPS id 3t4h3h5mr3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Sep 2023 16:54:51 +0000
Received: from p1lg14886.dc01.its.hpecorp.net (unknown [10.119.18.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by p1lg14879.it.hpe.com (Postfix) with ESMTPS id E7FC71318F;
	Fri, 15 Sep 2023 16:54:50 +0000 (UTC)
Received: from hpe.com (unknown [16.231.227.36])
	by p1lg14886.dc01.its.hpecorp.net (Postfix) with ESMTP id D882380D1F6;
	Fri, 15 Sep 2023 16:54:49 +0000 (UTC)
From: charles.kearney@hpe.com
To: charles.kearney@hpe.com, verdun@hpe.com, nick.hawkins@hpe.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/1] ARM: dts: hpe: BUG: Correct GXP register ranges
Date: Fri, 15 Sep 2023 16:54:35 +0000
Message-Id: <20230915165436.3118284-1-charles.kearney@hpe.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: zGnPKkKqoxhsGwh_D9XqoymsNO8WtjCp
X-Proofpoint-ORIG-GUID: zGnPKkKqoxhsGwh_D9XqoymsNO8WtjCp
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-15_13,2023-09-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 phishscore=0 mlxscore=0 priorityscore=1501 clxscore=1011 suspectscore=0
 mlxlogscore=401 bulkscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309150150
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Charles Kearney <charles.kearney@hpe.com>

Bug fix to correct memory ranges on GXP to include host registers. This
corrects a issue where the host interrupt controller is not available.

Charles Kearney (1):
  ARM: dts: hpe: BUG: Correct GXP register ranges

 arch/arm/boot/dts/hpe/hpe-gxp.dtsi | 39 +++++++++++++++---------------
 1 file changed, 20 insertions(+), 19 deletions(-)

-- 
2.25.1


