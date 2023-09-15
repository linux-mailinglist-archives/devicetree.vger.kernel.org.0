Return-Path: <devicetree+bounces-672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 145827A29C0
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 23:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18D6B1C20A09
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 21:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649481B29F;
	Fri, 15 Sep 2023 21:50:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29B018E31
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 21:50:47 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 169B0139;
	Fri, 15 Sep 2023 14:50:46 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38FJptK3025396;
	Fri, 15 Sep 2023 21:50:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=YaIhyTwd65Ep3+ss30ZCSQRNxKPlbSI/5fE+GHse75U=;
 b=VrPB4QP7HJ0Sr0DzopY9VMK3ePM6jC9vQFUoz/zSa1hh7qodC5r9Ia4TkwdDoGSE/K5b
 ZmzabUlmRpozSzeTUbm5Vff8IlhqAR1Ok8vUlIsoeMdcgvwz9qdG1hps2KQFx7x1ygcY
 46fIGOJK8nmLp7n38czjTa/NKz+gTnZ+QDkBvBRumdC/HUx7VrilE5re/X+DcChUEcT6
 hGxYYOo4A6EjwJRirICYAqg0ICwGvpknKDgmU3PCCuDIma2nL5F22VPZ2+cA5vd5vNHG
 8wpcmEOvDw9RFolg4wWxnHL/M2c8JkjI3LjGLTeSfRh0kyEtE+aLmTyG7Ry2Xi3Do3CG FQ== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t4vwc0cf3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Sep 2023 21:50:18 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38FLoHEw029152
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Sep 2023 21:50:17 GMT
Received: from [10.71.110.254] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Fri, 15 Sep
 2023 14:50:17 -0700
Message-ID: <b948d505-3cfd-318d-20eb-9f60a2865d23@quicinc.com>
Date: Fri, 15 Sep 2023 14:50:16 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/8] drm/panel: nv3052c: Add SPI device IDs
Content-Language: en-US
To: John Watts <contact@jookia.org>, <dri-devel@lists.freedesktop.org>
CC: Neil Armstrong <neil.armstrong@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Sam Ravnborg
	<sam@ravnborg.org>,
        Chris Morgan <macromorgan@hotmail.com>, <linux-kernel@vger.kernel.org>,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>
References: <20230911090206.3121440-1-contact@jookia.org>
 <20230911090206.3121440-3-contact@jookia.org>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20230911090206.3121440-3-contact@jookia.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: jZyOm69phZhMkFV-iM1kJB4ylEpIvXL4
X-Proofpoint-ORIG-GUID: jZyOm69phZhMkFV-iM1kJB4ylEpIvXL4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-15_19,2023-09-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 impostorscore=0 mlxscore=0 priorityscore=1501 adultscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 mlxlogscore=999
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309150196
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/11/2023 2:02 AM, John Watts wrote:
> SPI drivers needs their own list of compatible device IDs in order
> for automatic module loading to work. Add those for this driver.

Hi John,

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

Thanks,

Jessica Zhang

> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>   drivers/gpu/drm/panel/panel-newvision-nv3052c.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
> index 589431523ce7..90dea21f9856 100644
> --- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
> +++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
> @@ -465,6 +465,12 @@ static const struct nv3052c_panel_info ltk035c5444t_panel_info = {
>   	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
>   };
>   
> +static const struct spi_device_id nv3052c_ids[] = {
> +	{ "ltk035c5444t", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(spi, nv3052c_ids);
> +
>   static const struct of_device_id nv3052c_of_match[] = {
>   	{ .compatible = "leadtek,ltk035c5444t", .data = &ltk035c5444t_panel_info },
>   	{ /* sentinel */ }
> @@ -476,6 +482,7 @@ static struct spi_driver nv3052c_driver = {
>   		.name = "nv3052c",
>   		.of_match_table = nv3052c_of_match,
>   	},
> +	.id_table = nv3052c_ids,
>   	.probe = nv3052c_probe,
>   	.remove = nv3052c_remove,
>   };
> -- 
> 2.42.0
> 

