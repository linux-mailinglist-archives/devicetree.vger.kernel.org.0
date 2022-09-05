Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AA115AD212
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 14:06:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236197AbiIEMGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 08:06:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235420AbiIEMGq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 08:06:46 -0400
X-Greylist: delayed 588 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 05 Sep 2022 05:06:43 PDT
Received: from mail-m11879.qiye.163.com (mail-m11879.qiye.163.com [115.236.118.79])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7659E5E301
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 05:06:43 -0700 (PDT)
Received: from [172.16.12.78] (unknown [58.22.7.114])
        by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 0C709680224;
        Mon,  5 Sep 2022 19:56:52 +0800 (CST)
Message-ID: <510d1180-bc8e-7820-c772-ed7f35447087@rock-chips.com>
Date:   Mon, 5 Sep 2022 19:56:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 2/6] dt-bindings: add power-domain header for rk3588
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-3-sebastian.reichel@collabora.com>
From:   Finley Xiao <finley.xiao@rock-chips.com>
In-Reply-To: <20220831182629.79255-3-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
        tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGR5CVkhMGE9OSUxCGR9KHVUTARMWGhIXJB
        QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITkhVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kww6LDo5Mj0sOj5JI0pCDQ9I
        LC8aCzZVSlVKTU1JSExCS0pJTUpMVTMWGhIXVR0SFRceAlUDEhoUOwkUGBBWGBMSCwhVGBQWRVlX
        WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBTkJPQzcG
X-HM-Tid: 0a830d82b09d2eb5kusn0c709680224
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_05,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The devicetree binidng-headers should be dual-licensed, please change 
the license to GPL-2.0+ OR MIT.


在 2022/9/1 02:26, Sebastian Reichel 写道:
> From: Finley Xiao <finley.xiao@rock-chips.com>
>
> Add all the power domains listed in the RK3588 TRM.
>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> As mentioned in the cover letter I did not update this into dual
> license, since there was no feedback from Rockchip :(
> ---
>   include/dt-bindings/power/rk3588-power.h | 69 ++++++++++++++++++++++++
>   1 file changed, 69 insertions(+)
>   create mode 100644 include/dt-bindings/power/rk3588-power.h
>
> diff --git a/include/dt-bindings/power/rk3588-power.h b/include/dt-bindings/power/rk3588-power.h
> new file mode 100644
> index 000000000000..69f7e9060250
> --- /dev/null
> +++ b/include/dt-bindings/power/rk3588-power.h
> @@ -0,0 +1,69 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __DT_BINDINGS_POWER_RK3588_POWER_H__
> +#define __DT_BINDINGS_POWER_RK3588_POWER_H__
> +
> +/* VD_LITDSU */
> +#define RK3588_PD_CPU_0		0
> +#define RK3588_PD_CPU_1		1
> +#define RK3588_PD_CPU_2		2
> +#define RK3588_PD_CPU_3		3
> +
> +/* VD_BIGCORE0 */
> +#define RK3588_PD_CPU_4		4
> +#define RK3588_PD_CPU_5		5
> +
> +/* VD_BIGCORE1 */
> +#define RK3588_PD_CPU_6		6
> +#define RK3588_PD_CPU_7		7
> +
> +/* VD_NPU */
> +#define RK3588_PD_NPU		8
> +#define RK3588_PD_NPUTOP	9
> +#define RK3588_PD_NPU1		10
> +#define RK3588_PD_NPU2		11
> +
> +/* VD_GPU */
> +#define RK3588_PD_GPU		12
> +
> +/* VD_VCODEC */
> +#define RK3588_PD_VCODEC	13
> +#define RK3588_PD_RKVDEC0	14
> +#define RK3588_PD_RKVDEC1	15
> +#define RK3588_PD_VENC0		16
> +#define RK3588_PD_VENC1		17
> +
> +/* VD_DD01 */
> +#define RK3588_PD_DDR01		18
> +
> +/* VD_DD23 */
> +#define RK3588_PD_DDR23		19
> +
> +/* VD_LOGIC */
> +#define RK3588_PD_CENTER	20
> +#define RK3588_PD_VDPU		21
> +#define RK3588_PD_RGA30		22
> +#define RK3588_PD_AV1		23
> +#define RK3588_PD_VOP		24
> +#define RK3588_PD_VO0		25
> +#define RK3588_PD_VO1		26
> +#define RK3588_PD_VI		27
> +#define RK3588_PD_ISP1		28
> +#define RK3588_PD_FEC		29
> +#define RK3588_PD_RGA31		30
> +#define RK3588_PD_USB		31
> +#define RK3588_PD_PHP		32
> +#define RK3588_PD_GMAC		33
> +#define RK3588_PD_PCIE		34
> +#define RK3588_PD_NVM		35
> +#define RK3588_PD_NVM0		36
> +#define RK3588_PD_SDIO		37
> +#define RK3588_PD_AUDIO		38
> +#define RK3588_PD_SECURE	39
> +#define RK3588_PD_SDMMC		40
> +#define RK3588_PD_CRYPTO	41
> +#define RK3588_PD_BUS		42
> +
> +/* VD_PMU */
> +#define RK3588_PD_PMU1		43
> +
> +#endif

-- 
肖锋 Finley Xiao
**********************************************************
瑞芯微电子股份有限公司
Rockchip Electronics Co., Ltd
福建省福州市铜盘路软件大道89号软件园A区21号楼 350003
No.21 Building, A District, Fuzhou Software Park, Fuzhou, Fujian 350003, P.R. China
Tel: 0591-83991906-8602 Mobile: 18506057603
E-mail: finley.xiao@rock-chips.com
***************************************************************************************************************************
重要提示：本邮件及其附件含有仅供特定个人或目的使用的保密信息。若您并非该特定收件人或误收本邮件，请从系统中永久性删除本邮件及所有附件。
瑞芯微电子股份有限公司拥有本邮件及附件的著作权及解释权，禁止任何未经授权或许可的披露、储存或复制本邮件及附件的行为。谢谢您的配合。
IMPORTANT NOTICE: The contents of this email and any attachments may contain information that is privileged, confidential.
If you are not the intended recipient or receive it by mistaken, please delete the email in its entirety.
Rockchip Electronics Co., Ltd. copyright and reserve all rights.
It is strictly prohibited to disclose, copy or store the email without any further authorization or license. Thank you.
***************************************************************************************************************************

