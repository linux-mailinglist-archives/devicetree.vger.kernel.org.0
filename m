Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E92E369D940
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 04:25:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232873AbjBUDZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 22:25:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232707AbjBUDZE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 22:25:04 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 173FD1E5FF
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 19:25:03 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id x14so2827624vso.9
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 19:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1676949902;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+UR3Xvq78uQp5wq4siQlq6Jxdo9xg2xftO043/9/2BQ=;
        b=ZQj3zbnB6E4cvZ4tXYCyS5ZTMxonUzLr/4MAMI/UltY1SuQc8DsxavGhftmcqqKLe8
         x+SH6qeW2NyDf56WncpwNVMp9mZx3DckqQT+TVqegixj0bnIViRSmqfTFBRgLc01vBeD
         iaVgezIc7Wb1uiurVTdMJbukTHOEXO4ohFGpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676949902;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+UR3Xvq78uQp5wq4siQlq6Jxdo9xg2xftO043/9/2BQ=;
        b=m49zIoHoZO/LYUyGoMrZzTqStSCN7sE3tDvqsVom+4jag96AQ+GRZj3rW+Be80bqXg
         VYrSsuDeJI5JnMrxG0goxFu99ttTITh1a9+zPsUyh8f8Oh2LybVcgh09gTWASlBSahex
         BG2onqm+C2+DbZMRMToRR/9ue9hg0NNlMkrsZzCav/ITeNBvZ0PqcvvyZgauBd8OSuAg
         roXG5gNaJZG3NH7WEMd4q7r5gOvhtc5leaMsLMBRcddoden6wuua3iTGOBbqITQyWq+2
         besAY3HflQW5cByLlaM9ybqSumlaClNiD/HdAvhCPo9+WnP2nwt9GCjADHJDbrdfyFSY
         BTtA==
X-Gm-Message-State: AO0yUKW3RWmQEB0p3JTEDNI1N7C8NxwWzE0sYfEFCaIYnmCHHAlBRpcr
        nGAXVQMf5g8cF/erVTSjcOKvl4KebWHr481Vtxd7SA==
X-Google-Smtp-Source: AK7set+1aQzZuQeeKCDIsxkASzIMVCJfgtPqOEM4H6n/OAIRrb66ahir0RSw9gBclNHrmJwj6oTSGXqUKOxxpFXRqCE=
X-Received: by 2002:a67:f6c1:0:b0:411:a14d:6bac with SMTP id
 v1-20020a67f6c1000000b00411a14d6bacmr823493vso.44.1676949902247; Mon, 20 Feb
 2023 19:25:02 -0800 (PST)
MIME-Version: 1.0
References: <20230220093343.3447381-1-hsinyi@chromium.org>
In-Reply-To: <20230220093343.3447381-1-hsinyi@chromium.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 21 Feb 2023 11:24:51 +0800
Message-ID: <CAGXv+5E4_k1jKTnninYkuT6Tf=skB00AowHpM+hc8j_VFM-RfQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183: kukui: Add scp firmware-name
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 20, 2023 at 5:34 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> The upstream SCP firmware path is /lib/firmware/mediatek/mt8183/scp.img
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
