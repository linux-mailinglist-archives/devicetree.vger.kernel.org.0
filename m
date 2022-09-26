Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C72325E9834
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 05:21:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231176AbiIZDVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 23:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233029AbiIZDVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 23:21:19 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225EA25D1
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 20:21:14 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 30so7242570edw.5
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 20:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=hFRauekI8mX749A11zabMJwKnZcHcXKuDmO4So8v3vo=;
        b=AixRZnVWOzLnBwZfBtg6on2IFpinSMdiKGTGGn5iUYGSUPE1m3ciQrWBgacohOfZq9
         U71cXJlHnfjd7reOEUfvcUHl9kBuYXKnPwxe4kznA3T3bWB4rtqHA94ugxHWSNSTMvhJ
         pul2qPnhFvHhbaRs4NfMYx2PTEa67sX1Frz+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=hFRauekI8mX749A11zabMJwKnZcHcXKuDmO4So8v3vo=;
        b=cX8WXbUTLb3lBh7QIIPuAViWwo/FQWsmJMGMuvIXT2DUq+X7KrvUCobkQHlno1eftD
         S1+6+ezpcCQzyQrZe/CXvLP83vNKL+532yQpqxYsAP+i/QDAuGSXlh56kJvuhbotm1Ou
         ZN7EPaa4ac3SuOR/drHqDpYewn2SrZuT0p43KqLgqmuNFXaj2o97rrHAKJbAHo6kt4Pd
         mvJzTrhg4yRUB99/N/yhki5LcjMP1qp2WR19Yb3gBlNeNUYnBHCz9jgHFVvO7qIqR12Z
         b5sPOpXrfqZOhIXC8yK2ETRUJQxujWLjy2HTTY8aGUMxey+3P/zES2HG6yX1RwEEmVj9
         xcXQ==
X-Gm-Message-State: ACrzQf1Y2zOdp0HLtDGWccXURAv4uX26BxB0KSykTavEGXh/GVGGI2uW
        F9YwNOluo4BT/65mHFYJ1NqwMEsKR59htUgPHm606Q==
X-Google-Smtp-Source: AMsMyM68ZDwrrQBoFqZZC3KRonbtxs8Nb2DYXYPzyNANDUSJ7C79zpcMAPR6pS/a5apEOFxLB3kTcuzXbEP655raLi4=
X-Received: by 2002:a05:6402:3904:b0:451:f01c:9217 with SMTP id
 fe4-20020a056402390400b00451f01c9217mr19718052edb.78.1664162473029; Sun, 25
 Sep 2022 20:21:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220915072458.18232-1-angelogioacchino.delregno@collabora.com> <20220915072458.18232-7-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220915072458.18232-7-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Sep 2022 11:21:01 +0800
Message-ID: <CAGXv+5FePqwjXW3A=7qZEayHEKc3JQOm_AFDXNZEJaapHqbxGQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/10] clk: mediatek: clk-mt8195-topckgen: Register
 mfg_ck_fast_ref as generic mux
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, mturquette@baylibre.com, sboyd@kernel.org,
        miles.chen@mediatek.com, rex-bc.chen@mediatek.com,
        nfraprado@collabora.com, chun-jie.chen@mediatek.com,
        jose.exposito89@gmail.com, drinkcat@chromium.org,
        weiyi.lu@mediatek.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 15, 2022 at 3:25 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> This clock was being registered as clk-composite through the helpers
> for the same in the MediaTek clock APIs but, in reality, this isn't
> a composite clock.
>
> Appropriately register this clock with devm_clk_hw_register_mux().
> No functional changes.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
