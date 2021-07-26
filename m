Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1FCB3D5568
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 10:23:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232380AbhGZHjz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 03:39:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232320AbhGZHjx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 03:39:53 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CF58C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:20:22 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id h2so14027236lfu.4
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=91yXb1VgXd5JhIW1bX57GkCbuisDS0fNOG8Fkd81qLY=;
        b=FygJv0Sm71wlNsHO+sqMNccJlsftKpOA/wgSG/X15ho9In3iyj7q2bEnSLlCtjD12L
         N/M7zXxrwMCTf3a4UtmdqGojLPb9b7WaJOnty8rww0ORl+tzW8hTdRfEpfRm/BmXKpG4
         yCuxashLUeZU1hZS4DgXeoD2PStAB022xLxYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=91yXb1VgXd5JhIW1bX57GkCbuisDS0fNOG8Fkd81qLY=;
        b=AkbjVzRiIj+Nt2M/V/5pkwAhczl5nbuFW0ENU81d+16PSCvmBb74yt3fZXsPs4WpIl
         qIoTY2IY746s43MQVjwt7TGWxMtRM5cPpSO4Z/ig7q/d7yOMnfPYhtcfKcY44EmOGCAi
         bjYALFU1JDLae6Wdp7y/D5awzRqWuVrPQv4cFlOrGxinh7WBdOcv/ff0Sj++OdCrdOi1
         0mXwgmCEyxUZkpm3AzOcTrfU+ef3ONXq7P91NhDUWE9VbZIIIqW+y8YhchPFdhe7TWqN
         ck7plgtGQS6jHOeeSSxXsZB2gw2DP6OOcMNqJU9aleXknnZY1xAKTNCzMwJgFJhK4VM6
         G9qg==
X-Gm-Message-State: AOAM533dv0CiUR6Ti+LiHIvuRe7ilmxGt0ijby3LMJDBQKeG4L98moN+
        gOQLLfEk9oPfL/ih3ve8G2wBlkA/q6zbanXmHDPHcg==
X-Google-Smtp-Source: ABdhPJwfbJe3IIQsY3UXhqvOx83qo8udghPA/zhl6SSU23YZpe1JFdaeLb5Lxi5GlOdmAKbpunqhPBD06JXT87jgpNk=
X-Received: by 2002:a19:f00c:: with SMTP id p12mr12028038lfc.647.1627287620624;
 Mon, 26 Jul 2021 01:20:20 -0700 (PDT)
MIME-Version: 1.0
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Jul 2021 16:20:09 +0800
Message-ID: <CAGXv+5Ev4QU72cMqMW7sA=dijzh7-DCsfHY+Lmqd36uzg_7Nww@mail.gmail.com>
Subject: arm64: dts: mt8183: Incorrect mediatek,pull-*-adv values
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fabien Parent <fparent@baylibre.com>
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, Zhiyong Tao <zhiyong.tao@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I was looking at MTK pinctrl stuff upstream, and it seems there are a few
`mediatek,pull-*-adv` entries that have invalid values:

arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
mediatek,pull-down-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
mediatek,pull-down-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
mediatek,pull-down-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
mediatek,pull-up-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
mediatek,pull-down-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
mediatek,pull-up-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
mediatek,pull-down-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
 mediatek,pull-down-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
 mediatek,pull-down-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
 mediatek,pull-down-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
 mediatek,pull-up-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
 mediatek,pull-down-adv = <10>;
arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
 mediatek,pull-up-adv = <10>;

According to the bindings, the values should 0~3. <10> is probably a
incorrect attempt at using binary representation, which is wrong. This
probably leads to the pull-up/down getting disabled or ignored.

Cound people still working on these two devices take a look?


Regards
ChenYu
