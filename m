Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66B2D51FB22
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 13:17:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232315AbiEILUj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 07:20:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232270AbiEILUi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 07:20:38 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 363B41B7933
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 04:16:44 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id k126so8178518wme.2
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 04:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=jNOBE1z/4NtpGLe00EXXh4Iu7ejgcHgzbGnUckjMihw=;
        b=WvdzSshWmxodyKHlw6VFoeqRqJESG3fTgU+7I4UwSjiytpfn8XZqxJYSvw9CVd7fCf
         k6Kkw32dLAD4+IDNlIel9WEjVDjB8/qRninhCMqLZ4ZnIzv5Hw0gWmEfZTsGuWkv2HZf
         lWZh0P36OMaddpkd7Wj+ExVdMlgsEF59SrAhYtILImU8N0lKcECHW0noMqjcZWMwMIhp
         Vwy2EdGEgMxB3+AwgoNiyxalqy4iH3U+dx20/Pf0ui84FGgt/27RpNlHCLjToRJiPNlL
         BKyP0jBH50B/Lm4odz69ikfLK6Ojo+7uKc0BoeUzj9Anp5d7P6iETJpIF5RwTRO6i4wq
         QNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=jNOBE1z/4NtpGLe00EXXh4Iu7ejgcHgzbGnUckjMihw=;
        b=C8yplV8RdlcQNmyBUUrfGE2F7qu14WC4CBzHFASHKs3MzrU6KYyDqp47MGdn0ZL5Qs
         PSWnFRs6dUBuTwnNcKyy73hbB2hkeb1YYJXvtFTzU2N8EP8qcn8e915K9/SfASEKNiNt
         xFXDM0BFpWSAvu/4Z2F38bgMuGjMfuI6Ra7kIFoDmZRFymBDFglMhfU4LZp4XowK6M6a
         LAZUR+ks25fyY962tMJRJuTxk7kBPdnyh/oI57dpO0E4yQ4ufq37c/Q66OI86HOxLiQL
         cNcyIVGO3Wx+RAUBvgriaSFf7OjWAH/QSiY9UzAEeTbUm2fdKgx2CZ/pNyZXFSHBWdNx
         KZ3Q==
X-Gm-Message-State: AOAM532UNIyJBo0t8GtRz3m96PdoHykVY1dNenC8u5LZB+V6IupY18ai
        45ervGrsDDxtgvryFfIm8Ts8Qw==
X-Google-Smtp-Source: ABdhPJw/uA3KyEOb7IOfYdcJibXDQ2ibAG9h0d3kW5wk9pYdwo4Xg6EC+5Z1GD4ZWa2JBQRLRfPIJw==
X-Received: by 2002:a7b:c215:0:b0:394:5235:fe1 with SMTP id x21-20020a7bc215000000b0039452350fe1mr21703152wmi.56.1652095002759;
        Mon, 09 May 2022 04:16:42 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id x18-20020a5d4912000000b0020c5253d928sm10611514wrq.116.2022.05.09.04.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 04:16:42 -0700 (PDT)
Date:   Mon, 9 May 2022 13:16:38 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     alexandre.torgue@foss.st.com, andrew@lunn.ch, broonie@kernel.org,
        calvin.johnson@oss.nxp.com, davem@davemloft.net,
        edumazet@google.com, hkallweit1@gmail.com,
        jernej.skrabec@gmail.com, joabreu@synopsys.com,
        krzysztof.kozlowski+dt@linaro.org, kuba@kernel.org,
        lgirdwood@gmail.com, linux@armlinux.org.uk, pabeni@redhat.com,
        peppe.cavallaro@st.com, robh+dt@kernel.org, samuel@sholland.org,
        wens@csie.org, netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 4/6] ARM: dts: sunxi: move phy regulator in PHY node
Message-ID: <Ynj4FlyhZ3lEtLBT@Red>
References: <20220509074857.195302-1-clabbe@baylibre.com>
 <20220509074857.195302-5-clabbe@baylibre.com>
 <20220509115533.1493db30@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220509115533.1493db30@donnerap.cambridge.arm.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Mon, May 09, 2022 at 11:55:33AM +0100, Andre Przywara a écrit :
> On Mon,  9 May 2022 07:48:55 +0000
> Corentin Labbe <clabbe@baylibre.com> wrote:
> 
> Hi!
> 
> > Now that PHY core can handle regulators, move regulator handle in PHY
> > node.
> 
> Other than this is somewhat more "correct", is it really needed for those
> boards? Because it breaks compatibility with older kernels, so when we
> update the DTs in U-Boot, we run into problems (again).
> 
> IIUC this series is about the OPi3 & friends, which didn't work with older
> kernels anyway, so can we just skip this patch (and 5/6), to just enable
> the boards that didn't work before?
> 
> Cheers,
> Andre
> 

We could have a situation where stmmac handle phy for older boards, and PHY core handle them for new boards.
Up to maintainers to see if they want a split situation or not.
