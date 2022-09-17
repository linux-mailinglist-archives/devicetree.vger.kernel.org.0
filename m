Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28E895BB8CE
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 16:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229593AbiIQOh7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 10:37:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbiIQOh6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 10:37:58 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF09E2B1A0
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 07:37:56 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id s11so12735773ilt.7
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 07:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=/pyCf9jgr/gGLY5r0aV5BLXgg8Gpjv3LW/5/ohZeuhg=;
        b=WisMG0jTPnP2xdXMdZZKE7prG5yw34poCEF9EhWlVdGz1PeMBcJbECUVE6G8+RLuj/
         EPkblAEwusha1AZqAIXaFmeR4kvpqbreatZZZCEXVXdSXrhS38yGSWL7iS2gu7AiCxqT
         WpON/F0q/S/umIu0uLKl4hG1zUfTDTW5CYz2GKmp8OmsmEq7D2uDTXMctZd1SpmQEP2G
         5OiNZs9ChDQyMY62VyLH2FuPEUmC5g4PKlMjjjulcIOnh177XJJwhyMNEIe174AbfGgn
         ofClY0ecEUHgMF2ZxgV+BtK0dQXLE13U6Om33EDQbtslVqzITn3pnHvcOQ3xRTJLAqH+
         KHAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=/pyCf9jgr/gGLY5r0aV5BLXgg8Gpjv3LW/5/ohZeuhg=;
        b=o45ILP8+8wiLEnf4JzaavLu53SmeUy9y7OQ0Sl5iokiId7wiKpWTxm/6grzH16gfoB
         uk9hGGh7vyiy6SSMLYKRqOzb+Pm+C1iV1s3qAWU9UHtBrUHDKOrJANgfVsrd2WtMToZW
         teffcvxMZC75jeKw8EsS/y/+olEfYuFBLN5CPLNUmsI3B8xsP2N5RIxINvWLes0Gv6Bq
         qyX+hkvTGF2FWYhC7nKfGIy6KQ9GF8zIOE82RFAd65yAtqDLYd6WBNyuvJTj9n2S0yUV
         J3Y1PBWkaCqlYB2zsJy15Zd3BAvUW1/bA5ooORW6h5uOhe/5UeSi4L1lnbXDVPOel6G1
         rH6Q==
X-Gm-Message-State: ACrzQf1j5I/ZpivlEAS9bi14510pWypmCVDnEwpoNsBPnE50Qpf5TlJ+
        GtgVnpdLtUj28xSwprLqZ4G+wd25qc5xugrSnpdjIQ==
X-Google-Smtp-Source: AMsMyM4ZgNMoeoCFz916osy451rmg4TnXsBY5Y/SoavT/6MipQjgjKRhbbfF5AFIdTVZyS7qoN/M9H19kXEMr2SDa7Q=
X-Received: by 2002:a92:cc51:0:b0:2f1:4eca:9a17 with SMTP id
 t17-20020a92cc51000000b002f14eca9a17mr4305307ilq.82.1663425476125; Sat, 17
 Sep 2022 07:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220915163947.1922183-1-jagan@edgeble.ai> <20220915163947.1922183-6-jagan@edgeble.ai>
 <3182731.oiGErgHkdL@phil>
In-Reply-To: <3182731.oiGErgHkdL@phil>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Sat, 17 Sep 2022 20:07:45 +0530
Message-ID: <CA+VMnFwb0bmvsmAqbfEN12BGsTXfxPs2UimjNf9cAvayKBLrbQ@mail.gmail.com>
Subject: Re: [PATCH v5 5/6] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiko,

On Sat, 17 Sept 2022 at 19:56, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> Am Donnerstag, 15. September 2022, 18:39:46 CEST schrieb Jagan Teki:
> > Add pinctrl definitions for Rockchip RV1126 and the pinctrl
> > conf's are included it from arm64 rockchip devicetree path.
>
> I'm not sure I remember the cause. So could you tell me
> why they are needed in the arm64-space as well?

From RK3568 on-wards pinctrl configurations are maintained in common
conf file rockchip-pinconf.dtsi and it is available in arm64 path
(arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi). So even for
RV1126 this patch uses that common conf file as these are common
across all rockchip platforms.

Let me know if I'm missing anything?

Thanks,
Jagan.
