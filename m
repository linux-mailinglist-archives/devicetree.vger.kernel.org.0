Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFC30660535
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 18:00:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234720AbjAFRAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 12:00:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234688AbjAFRAx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 12:00:53 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FDF641667
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 09:00:51 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id bn26so1853564wrb.0
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 09:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NPGjO3GLxwuKoc7lZtIvtYmPySePxCmc9A8414gqSgU=;
        b=euSC14S8bRke4P9nxYzrLsV7/Rs+V6Xwl16eqrk35fgRXHrcJW5M+EQ3TnnmVVz0OG
         imulyWr/yTkRznDSLBl6k+WUX9Hs08bCyaj/QtWTBFWr7PY4Bs/uZgGVLA+u+G0kjK1Q
         qXyAQWkNWXr2Jtmwao2CR7rfbv8Gr9gBMeR00JF4LoZPF4CGI8jAAZLlvp+/VbpPfmIo
         4eeQb6ZkqPijQpvRdJPZbbz8MfSqPjoTyC40kWVWydVWtcd5HC6/wjxYGrCZJJ8aS6w/
         OHJDK985nTHcaHYGlN3Uos/RdUc/afXFpdOH7junzOIQUY5F7bbBQggu0lFe/Q4h5PNO
         TfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NPGjO3GLxwuKoc7lZtIvtYmPySePxCmc9A8414gqSgU=;
        b=MKuqX2nJhastZNqE0p6/RCwcFl6gtEk4oTwPHy64XjWHPoyE3tLeJdHXqfV2gHUpyX
         50jBDv87+LDlgU3CbJYFBD4WTzDVqD01odravb7O8LarCzZaFV4FjKlSgIEC9jSQTeMl
         Fz+0d6rBJIUV6L8lRirywYikbx31I7UYJMOBKVOhY6Y0W1w6Evq66UGGfxqbxQmKgpR+
         YPhUY3SZhsdXDplzqFLcB6XD6qEFCKB6GFT6uqo3AmYORuQwvsvzn1P6k/GHFvDMzwjA
         TS+fqq67qIRuzSu6B7OwDynoDk5rXWgyKhoQSooIAfY7JfAhPLSJlMBw5/G/enmniLbs
         EzmQ==
X-Gm-Message-State: AFqh2kq8hJiUr/5GwaRsfZ/a1eNPH7XOBphLUiOEZ9NY9WzCygzt9coI
        9AuebuWZG+tykh+uezT64OF+fA==
X-Google-Smtp-Source: AMrXdXuFqZYcBKNOWyaXZXz+967P6PyjNmHIk3ic4subWD87vHVwOE8AwQVtHuWeEOjpKP7UFEo2PQ==
X-Received: by 2002:adf:da51:0:b0:2b6:daf8:52ad with SMTP id r17-20020adfda51000000b002b6daf852admr3402719wrl.52.1673024449899;
        Fri, 06 Jan 2023 09:00:49 -0800 (PST)
Received: from blmsp ([2001:4091:a245:805c:8713:84e4:2a9e:cbe8])
        by smtp.gmail.com with ESMTPSA id f8-20020a0560001b0800b002423edd7e50sm1633417wrz.32.2023.01.06.09.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 09:00:49 -0800 (PST)
Date:   Fri, 6 Jan 2023 18:00:48 +0100
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chen-Yu Tsai <wenst@chromium.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, mturquette@baylibre.com,
        sboyd@kernel.org, matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, johnson.wang@mediatek.com,
        miles.chen@mediatek.com, fparent@baylibre.com,
        chun-jie.chen@mediatek.com, sam.shih@mediatek.com,
        y.oudjana@protonmail.com, nfraprado@collabora.com,
        rex-bc.chen@mediatek.com, ryder.lee@kernel.org,
        daniel@makrotopia.org, jose.exposito89@gmail.com,
        yangyingliang@huawei.com, pablo.sun@mediatek.com,
        weiyi.lu@mediatek.com, ikjn@chromium.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH v2 04/23] clk: mediatek: cpumux: Propagate struct device
 where possible
Message-ID: <20230106170048.p4d3rq6kehmf3adp@blmsp>
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com>
 <20221223094259.87373-5-angelogioacchino.delregno@collabora.com>
 <CAGXv+5F8QZGc4oDKJAGbpvubqiewvngURpNhrenS3pcGQNrOYw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAGXv+5F8QZGc4oDKJAGbpvubqiewvngURpNhrenS3pcGQNrOYw@mail.gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Angelo,

On Mon, Dec 26, 2022 at 03:07:10PM +0800, Chen-Yu Tsai wrote:
> On Fri, Dec 23, 2022 at 5:43 PM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
> >
> > Take a pointer to a struct device in mtk_clk_register_cpumuxes() and
> > propagate the same to mtk_clk_register_cpumux() => clk_hw_register().
> > Even though runtime pm is unlikely to be used with CPU muxes, this
> > helps with code consistency and possibly opens to commonization of
> > some mtk_clk_register_(x) functions.
> >
> > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> 
> As with the gates patch, could we make the |struct device *| parameter the
> first one? Also for this case I think we could even drop the
> |struct device_node *| parameter.

Reviewed-by: Markus Schneider-Pargmann <msp@baylibre.com>

clk_hw_register and others are using the device pointer as first
parameter as well. So I think it makes sense to do it the same way as
ChenYu suggested.

Best,
Markus
