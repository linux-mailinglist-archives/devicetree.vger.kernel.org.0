Return-Path: <devicetree+bounces-1190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7587A5416
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 22:27:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D05CC1C21059
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 20:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA352869C;
	Mon, 18 Sep 2023 20:27:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580B327EF4
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:27:40 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8556E116;
	Mon, 18 Sep 2023 13:27:38 -0700 (PDT)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38IK7O5V029990;
	Mon, 18 Sep 2023 20:27:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ACVw4rp0FamgaBhcqjxntg9e4OvnXiwruT7sOlPwj8I=;
 b=UrTuqvJ617mOQgwtl3uppx9k3PcN3wt97BS3N+LPAyqnXuanvHias2rCjRcxrCH2R0np
 0HKEeGbEDTy7IfELI1b7E6lWWgzk0TU5NhEu+nHsM11fK+6D2eRNJ9rxfgxUgBZ6Q/NS
 Meyen7C+Jkh8N+bLiYOw0s/ZQBaFFIFq6FoTtdt+ILDEgoJMQaPwepg6wwZhzhaJfjPa
 3XyLx3VkwHivbRYmCqqjRtBpA70tmm/unZEt73hL2L07GYfoPSOShij9BCB+IyHO9qCg
 NsTvMhbd8Rx7jQ/ShOY1iqfdm6L6TI+WnY6iX0R98tzIcEVOwVDI4ndtlS5P4RTrUWQ3 Kg== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t6mts9apr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Sep 2023 20:27:07 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38IKR6jr005970
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Sep 2023 20:27:06 GMT
Received: from [10.110.125.66] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Mon, 18 Sep
 2023 13:27:06 -0700
Message-ID: <64760d6e-10f4-4108-d467-f40289a1c6b4@quicinc.com>
Date: Mon, 18 Sep 2023 13:27:05 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v2 4/9] drm/panel: nv3052c: Wait before entering sleep
 mode
Content-Language: en-US
To: John Watts <contact@jookia.org>, <dri-devel@lists.freedesktop.org>
CC: Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg
	<sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
        Daniel Vetter
	<daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Chris
 Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>,
        Paul
 Cercueil <paul@crapouillou.net>,
        Christophe Branchereau
	<cbranchereau@gmail.com>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230918125853.2249187-1-contact@jookia.org>
 <20230918125853.2249187-5-contact@jookia.org>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20230918125853.2249187-5-contact@jookia.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: AiiOecIg-oIqUSVsEc1jm7-2K1ue1XDx
X-Proofpoint-ORIG-GUID: AiiOecIg-oIqUSVsEc1jm7-2K1ue1XDx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-18_09,2023-09-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 bulkscore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 malwarescore=0 mlxscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309180178
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/18/2023 5:58 AM, John Watts wrote:
> The panel needs us to wait 120ms between exiting and entering sleep.
> Guarantee that by always waiting 150ms before entering sleep mode.

Hi John,

Same question as the last patch -- is this a fix for something?

Thanks,

Jessica Zhang

> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>   drivers/gpu/drm/panel/panel-newvision-nv3052c.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
> index 2526b123b1f5..307335d0f1fc 100644
> --- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
> +++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
> @@ -289,6 +289,9 @@ static int nv3052c_unprepare(struct drm_panel *panel)
>   	struct mipi_dbi *dbi = &priv->dbi;
>   	int err;
>   
> +	/* Wait 150ms in case we just exited sleep mode */
> +	msleep(150);
> +
>   	err = mipi_dbi_command(dbi, MIPI_DCS_ENTER_SLEEP_MODE);
>   	if (err)
>   		dev_err(priv->dev, "Unable to enter sleep mode: %d\n", err);
> -- 
> 2.42.0
> 

