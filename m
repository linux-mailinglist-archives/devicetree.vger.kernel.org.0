Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B90D656094
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 07:56:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231670AbiLZG4z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 01:56:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231601AbiLZG4u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 01:56:50 -0500
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E1D11174
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 22:56:49 -0800 (PST)
Received: by mail-ua1-x929.google.com with SMTP id e24so2206758uam.10
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 22:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M1SnFH/lPjK8DkSzjFnZaeTI7PMR4Peim0SSBCAeoNI=;
        b=gpVfONHwSnhvI+o4Oswm1KdRr3vFgOt5mgU6LHjiuvn3rzTBYjJzr0Gz85lS4d9YPd
         Kxbz999P5+w/OV2qnWUaenSzULCc+id7R/d8frAkCqbUxnsaPLKZqWUkxhlnQIqSsrkz
         W5JAOZXn7/EThGJgUqWOiZ5S2SW8YH0PXBNb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M1SnFH/lPjK8DkSzjFnZaeTI7PMR4Peim0SSBCAeoNI=;
        b=b/Ay+lT8Y5PDR3sGxjGX3xBUuz7RqgtzQ1QnHGqrHbD8n0+B8+PO8nSiuc8XjH06vu
         Mn7V7mCcyMSIBauASQcZJKHMnJBUiDFp7PO/tL55tjuVLUsxhyUXlnW1kBh/vt0SIpuH
         gTrXrsAmtZjYOijyTNS44Q80htUTuha5MZFelWtgdWaxBxW47Gn1WzimYkfVni61OJi4
         Kii462olUnwu7+ZCCtnb8m60h8hmk/ME12jy0HyzcPjEhIb4sYGW6q2CFMW3SZPMmZDY
         U//0XNg0BVCIo/EKdJacLVt3A+XGySHBF5U+ceJBOT+59WsXOy2s+eh7bsT30iQDhNaN
         e61Q==
X-Gm-Message-State: AFqh2krla0EbzJEOTcBcmqidc5+t48G/q0kRHkfD2dKecgKQzLc9PIIb
        ZQq+Yjipg8EZPCx2RrhJE4ikAl4B1WE9t95ztALoTw==
X-Google-Smtp-Source: AMrXdXumnCdbt8Id7nVQr72ncvxGvcSqSPRDFYpUVKhiIspGshPFm1Id8SI1nyZQ+l8BnASdx7sBOZ9SXIDiFAYGgvU=
X-Received: by 2002:ab0:738b:0:b0:469:f0ea:c1f7 with SMTP id
 l11-20020ab0738b000000b00469f0eac1f7mr780278uap.0.1672037808572; Sun, 25 Dec
 2022 22:56:48 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com> <20221223094259.87373-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221223094259.87373-3-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Dec 2022 14:56:37 +0800
Message-ID: <CAGXv+5HTi14-AV38DAFKao+PBeMf3CpSgvD6OuNnzRygL2bvgw@mail.gmail.com>
Subject: Re: [PATCH v2 02/23] clk: mediatek: mt8192: Propagate struct device
 for gate clocks
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     mturquette@baylibre.com, sboyd@kernel.org, matthias.bgg@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        johnson.wang@mediatek.com, miles.chen@mediatek.com,
        fparent@baylibre.com, chun-jie.chen@mediatek.com,
        sam.shih@mediatek.com, y.oudjana@protonmail.com,
        nfraprado@collabora.com, rex-bc.chen@mediatek.com,
        ryder.lee@kernel.org, daniel@makrotopia.org,
        jose.exposito89@gmail.com, yangyingliang@huawei.com,
        pablo.sun@mediatek.com, msp@baylibre.com, weiyi.lu@mediatek.com,
        ikjn@chromium.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 23, 2022 at 5:43 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Convert instances of mtk_clk_register_gates() to use the newer
> mtk_clk_register_gates_with_dev() to propagate struct device to
> the clk framework.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
