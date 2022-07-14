Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B7545754BC
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 20:14:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240232AbiGNSOw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 14:14:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232339AbiGNSOw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 14:14:52 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C555567597
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 11:14:50 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id j3so3339688oif.8
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 11:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yL38y/2bFG1AO5qjLaabbJhiweElDmrY+o816APFSRc=;
        b=Ux+0eZn8uZtPH+hZ2lAG9pVVSBXTqp/fZBKovKB09+ewbBwSxUUfldTSCtw75y8LIv
         +tO7muQOWwlfNC51j0F7GNuUhwVxTPmLNQk/5o2qEQHoD0y/dEsVbJVAF4J25HtTWYFM
         vHQJ7vLQHU0xHeP8k4RYHCAUU3cGCE7cG5ZOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yL38y/2bFG1AO5qjLaabbJhiweElDmrY+o816APFSRc=;
        b=q07oiYGf5dUN8CxgR4jOHfAWUAYzSUKXV0m7j1rNrOV+XfQ/aZO7Zde7GrVGpY3O/T
         YU5ANAeub/JGs46gwfb4HKtsVPAfKpJW6b/K4AqAWkgXnTSjGR+2wPEMmM+kzVHkDhGP
         QeeFsurK/BcrD84lvsRidyyzYF5jGCuro2GGlmzm3aaGewyJfZgZ0OnmxQzdckuqA9hW
         yMfixtTdElqxi78sx8HciM4r2ukcqfb+DVOg7DRoAjq3W5DdCl7bP5qiQRPjv/kTf7C/
         5nQGw3TgvjXtR1MWf+EaLE7teh4Fu4YYwMbcZxm7rriz3EQbbrF3FZ3YVefhSjQPUtQd
         tzkg==
X-Gm-Message-State: AJIora8uGON9UREM2oYqkj3hW8uMEpNK5mcdl4wSDp9JERDV9Szfubqz
        8fggTjYYa2dqI7oH9V4/9aHr6158yTcxgQ==
X-Google-Smtp-Source: AGRyM1u+wT2oQA1avNYNNx4FXekjEZ161Tf8FMYAFL3xrHFh3XBgA1fVXbAXJsMu0cTaQ9FGR/63yA==
X-Received: by 2002:a05:6808:1184:b0:322:4c18:2f7e with SMTP id j4-20020a056808118400b003224c182f7emr5072581oil.109.1657822489874;
        Thu, 14 Jul 2022 11:14:49 -0700 (PDT)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com. [209.85.210.47])
        by smtp.gmail.com with ESMTPSA id j22-20020a056830271600b0061c8164173esm14898otu.51.2022.07.14.11.14.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 11:14:49 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id y10-20020a9d634a000000b006167f7ce0c5so1809523otk.0
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 11:14:48 -0700 (PDT)
X-Received: by 2002:a05:6830:3493:b0:61c:140e:b2e2 with SMTP id
 c19-20020a056830349300b0061c140eb2e2mr3766958otu.292.1657822488121; Thu, 14
 Jul 2022 11:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220708080726.4170711-1-judyhsiao@chromium.org>
In-Reply-To: <20220708080726.4170711-1-judyhsiao@chromium.org>
From:   Brian Norris <briannorris@chromium.org>
Date:   Thu, 14 Jul 2022 11:14:37 -0700
X-Gmail-Original-Message-ID: <CA+ASDXM-Cb8idKp+9nBDrGd5SRb4dy20TChAQT3WmdwS+wbzNw@mail.gmail.com>
Message-ID: <CA+ASDXM-Cb8idKp+9nBDrGd5SRb4dy20TChAQT3WmdwS+wbzNw@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rk3399: i2s: switch BCLK to GPIO
To:     Judy Hsiao <judyhsiao@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Lin Huang <hl@rock-chips.com>,
        Elaine Zhang <zhangqing@rock-chips.com>,
        Shunqian Zheng <zhengsq@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Chen-Yu Tsai <wenst@chromium.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 8, 2022 at 1:07 AM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> We discoverd that the state of BCLK on, LRCLK off and SD_MODE on

super-nit: s/discoverd/discovered/

(If this is the only issue, perhaps Heiko can fix that when applying.)

> may cause the speaker melting issue. Removing LRCLK while BCLK
> is present can cause unexpected output behavior including a large
> DC output voltage as described in the Max98357a datasheet.
>
> In order to:
>   1. prevent BCLK from turning on by other component.
>   2. keep BCLK and LRCLK being present at the same time
>
> This patch adjusts the device tree to allow BCLK to switch
> to GPIO func before LRCLK output, and switch back during
> LRCLK is output.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>

IIUC, it's not guaranteed everyone is using max98357a on this I2S
channel, but I suppose this change is still safe anyway? Or if this is
expected only for Gru-related boards, we could override the i2s node
settings in rk3399-gru.dtsi or similar.

Anyway, I think this is right:

Reviewed-by: Brian Norris <briannorris@chromium.org>
