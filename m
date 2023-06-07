Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2181726962
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 21:03:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233096AbjFGTDm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 15:03:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232880AbjFGTDi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 15:03:38 -0400
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25E1A193;
        Wed,  7 Jun 2023 12:03:37 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-77499bf8e8bso316432839f.0;
        Wed, 07 Jun 2023 12:03:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686164616; x=1688756616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FRteKF9KdN6gJkMzhWYMSM2LNizcvL/cNXiHsNsqxCA=;
        b=I8kNnuMJ7BaapPGae/YIYi5Wn5ynVWsK23Q+Fyg1MBuNVEZ+pXydnxkjeo6qmEJKdW
         7g3cNAoDIRniSJTr4TkLLOsdFAX7DPKQ4k1rZe5TL6UwgelR8t3zBDMGBriZ4vxUWpkg
         Vj6PMA4tJqbpgn3TAV43cAypnLCR1mivf65n9wpxk0u2ZreXcN9Yaz+2CNCmSOQvAiWZ
         CtIQ98a8qmM1Bk3tFhx5Hpg3C2JvfLYPiBznjqIVR6MlxbzNdAqQWWYragRLGwcAn1Lr
         fpvKhCN7vmCDnCviO13oBcHsZkYF4OWpGxq7pwfS8vkwvjzKB8Jz/q9Mgpc1DJItiCON
         WJDg==
X-Gm-Message-State: AC+VfDyz5hxEhoL5knTxnx7A++3FkVkrjfwaGRxvZlhZdDwEFnD3q4EG
        4qPBUQ+6uoeEi8T1hkwBXQ==
X-Google-Smtp-Source: ACHHUZ6y8qEaEdvoxKeghMmdMKHQ5KImm2mv7rSGA7rpM9ovCdbnIap1dRJaZpo5B85xz9ghfcbhuQ==
X-Received: by 2002:a6b:da0f:0:b0:753:13ec:4ba with SMTP id x15-20020a6bda0f000000b0075313ec04bamr5802711iob.4.1686164616388;
        Wed, 07 Jun 2023 12:03:36 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id m19-20020a056638225300b0041a9e657035sm3210343jas.48.2023.06.07.12.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 12:03:35 -0700 (PDT)
Received: (nullmailer pid 3776585 invoked by uid 1000);
        Wed, 07 Jun 2023 19:03:33 -0000
Date:   Wed, 7 Jun 2023 13:03:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     anarsoul@gmail.com, netdev@vger.kernel.org, edumazet@google.com,
        linux-rockchip@lists.infradead.org, conor+dt@kernel.org,
        alistair@alistair23.me, krzysztof.kozlowski+dt@linaro.org,
        pabeni@redhat.com, davem@davemloft.net, kuba@kernel.org,
        heiko@sntech.de, devicetree@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: net: realtek-bluetooth: Fix RTL8821CS
 binding
Message-ID: <168616460571.3776366.16030523685871191721.robh@kernel.org>
References: <20230508160811.3568213-1-macroalpha82@gmail.com>
 <20230508160811.3568213-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230508160811.3568213-2-macroalpha82@gmail.com>
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


On Mon, 08 May 2023 11:08:10 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Update the fallback string for the RTL8821CS from realtek,rtl8822cs-bt
> to realtek,rtl8723bs-bt. The difference between these two strings is
> that the 8822cs enables power saving features that the 8723bs does not,
> and in testing the 8821cs seems to have issues with these power saving
> modes enabled.
> 
> Fixes: 95ee3a93239e ("dt-bindings: net: realtek-bluetooth: Add RTL8821CS")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!

