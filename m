Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED755B6C9E
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 13:54:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231672AbiIMLyR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 07:54:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231516AbiIMLyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 07:54:16 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95CC65F10A
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 04:54:15 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id e5so11533901pfl.2
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 04:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=faUxRkw4ghDOJETa7lcfodH1QDDcvG/BJpqLkq4yHeo=;
        b=K+9NYK3dschybzhm/R2wRw6EgSIo/tm4NjFlheJI01kL2ZVSwWbr5nEpBSpwhJd72t
         ukb3G5oaXN89bUj8npzqR3veg3sfJ+yDigq9NBqiq5afYX5ArBAMuS/P9u6ATSbnOGjf
         fhpyZfg8iBzgnVM3z40DtS7m1rrdqgH9ujDLIgqpsyK32lMsRQbarvK9A/lmSaIcbfyQ
         k3U7FfcJ3Hw0Lo/zRp9l3PqSq5RHY/8yB4UBB3k/syg+KuLiA8YTyBc7r2QsynV8V5kH
         /oaBLC7uPR8XCSHCkpzKEuU3xbhsF2KADFc6np+OelQ25ILUqG4cgOEEQizbXmyfo8zZ
         76Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=faUxRkw4ghDOJETa7lcfodH1QDDcvG/BJpqLkq4yHeo=;
        b=EhFZYkGR7PwBHQmId65WIUekfdsDEwH5gLGMsFfnJO/E8duKypmQe98sEcngYfaGOX
         rkQRbA2kOHu0ZyIzxW1v0BQf0SpEynwESqljFEwjLyVv85GW7Q0JjJjeDd86OXyj/QeI
         CUYdYoNkxGdD/0duCtNjJd68YZRwl9TasNrtvE/N5q+BTGQryQ/CuZ6HHoNxYoBhtevr
         81EVwySf5D5dazWAtlpBUHt9RiEOATWzkJQG9FSGxKmqJhtr9Xy4oPjM5i4iMwmdscCx
         UbBoPdmkSDP9XNrByQeyqC/QSsykfajSoiVZHeHJYZyr4Ggg4bDTTpHmR9/U6M8K9EOa
         nJjA==
X-Gm-Message-State: ACgBeo01oF8ch6v4dQ0yV0WKmCHYAdiHII9uMA+r2M8i74UnUtG1pTWK
        UYqml96/6zV/IIgpuKdJGMnT4F1GmrAjXGeryo4=
X-Google-Smtp-Source: AA6agR7PKyi1M0qpWbW9YtCC6nU16KKFtQpX/R7S5mqnM8dsPBUm/yAKQ3bRw+JH44PrCAhOopKQK0cUmA8rxTq0fAA=
X-Received: by 2002:a63:1b59:0:b0:434:883:b055 with SMTP id
 b25-20020a631b59000000b004340883b055mr28509834pgm.50.1663070055124; Tue, 13
 Sep 2022 04:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <1663067426-29534-1-git-send-email-jun.li@nxp.com>
In-Reply-To: <1663067426-29534-1-git-send-email-jun.li@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 13 Sep 2022 08:54:01 -0300
Message-ID: <CAOMZO5Bo4CWE2_8ACd586MEokkeNzvk+yefOThD=tJE6aBwajg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mp: correct usb clocks
To:     Li Jun <jun.li@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        laurent.pinchart@ideasonboard.com, l.stach@pengutronix.de,
        marex@denx.de, peng.fan@nxp.com, paul.elder@ideasonboard.com,
        Markus.Niebel@ew.tq-group.com, aford173@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 13, 2022 at 8:28 AM Li Jun <jun.li@nxp.com> wrote:
>
> After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> usb_root_clk is no longer for suspend clock so update dts accordingly
> to use right bus clock and suspend clock.
>
> Cc: stable@vger.kernel.org # v5.19+
> Signed-off-by: Li Jun <jun.li@nxp.com>

Please also add the Fixes tag.
