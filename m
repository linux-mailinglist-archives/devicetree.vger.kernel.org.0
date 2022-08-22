Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F2DE59C5C5
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 20:10:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234980AbiHVSKO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 14:10:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236008AbiHVSKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 14:10:13 -0400
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 668C34622B
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:10:12 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id j5so13146209oih.6
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:10:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=e9AqIUIO9u8Q0cx3y6LQnMaSjH/c6l3ApVpiGp13j3I=;
        b=cO43l4nnfg4ESTRi+Zi1AHAkKfapHlJRTJCPgtXMdW/wX0b6U2TdyuY9x7aH3rTbsI
         QzG5JgmNGKSdoNXIyBrAMV0qXlLZG3HPGNaMtPKYadv99vZTJnX/YqkAv8eoxMrNOY2I
         FiSi3J/7gnT002gemXhfN21bQp6IM5+K0zFCxX6ayZXaZD/OCc9pdNqu8NH3QjJ0L8Pd
         hosE1eJR0tqVJoW0zD19vWTehPs2q0lM+DxMRDr3ORBvdfs0UDCS+w/8+RtSgsQX1BTS
         7T279pX0ixXFf57QvIXQoe8UyUYzHtW6WSD09e4D7V4+qFORdaeL6VJ/iDEKQzMkmVcv
         FFWA==
X-Gm-Message-State: ACgBeo3N4LXA5zxJLE8/5WbKQS/Qbq1tg8AbfbGqjY+GCyfgZMFggjwA
        vtnIGaGecoeqqy8z9fVBew==
X-Google-Smtp-Source: AA6agR5SfzObR/DqjpR5Nv9r2XhuYAidUeM2j1ygw8Boxdz67jOhUkfg0GXA16CsuluH2kvzhF7wLw==
X-Received: by 2002:a05:6808:2d7:b0:344:a080:7e8a with SMTP id a23-20020a05680802d700b00344a0807e8amr11157992oid.10.1661191811700;
        Mon, 22 Aug 2022 11:10:11 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x20-20020a056870331400b0010c3655967csm417357oae.40.2022.08.22.11.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 11:10:11 -0700 (PDT)
Received: (nullmailer pid 85043 invoked by uid 1000);
        Mon, 22 Aug 2022 18:10:09 -0000
Date:   Mon, 22 Aug 2022 13:10:09 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
Message-ID: <20220822181009.GA80526-robh@kernel.org>
References: <20220818124132.125304-1-jagan@edgeble.ai>
 <20220818124132.125304-10-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220818124132.125304-10-jagan@edgeble.ai>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 18, 2022 at 06:11:22PM +0530, Jagan Teki wrote:
> Add the dt-bindings header for the Rockchip RV1126, that gets shared
> between the clock controller and the clock references in the dts.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v3:
> - update the file name
> Changes for v2:
> - exclude from clk patch
> 
>  .../dt-bindings/clock/rockchip,rv1126-cru.h   | 632 ++++++++++++++++++
>  1 file changed, 632 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
> 
> diff --git a/include/dt-bindings/clock/rockchip,rv1126-cru.h b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> new file mode 100644
> index 000000000000..cfba8226ded2
> --- /dev/null
> +++ b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> @@ -0,0 +1,632 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Dual license please. Need an ack from Rockchip for that (and not just 
on this one).

> +/*
> + * Copyright (c) 2019 Rockchip Electronics Co. Ltd.
> + * Author: Finley Xiao <finley.xiao@rock-chips.com>
> + */
