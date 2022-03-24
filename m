Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01A794E60B1
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 09:53:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349037AbiCXIzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 04:55:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344839AbiCXIzA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 04:55:00 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 005C86C96E
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 01:53:26 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id w21so1024120wra.2
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 01:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dYsVFhCrdFzymQrW11VWatLy1IpiH7e9KgAVON6gbDw=;
        b=063VACslaS0QkYsACr4TW0iC0t4e+PNhn6Yyx34AqDoKkwGvGnJXLNe1ohXcWWBDIP
         OZFnAj2CheZsZEo+kcqH0g8dN1FePndHLe0XBS05hHNB85Ggg9mzU0N56RRRNVv8za2X
         kMu8qsWIokhYI/vf+Gwjg33CGkY52MYVEpai+fqi07rH3aRzuMmsnPi1X+oZrMZ0NBtW
         cjlj1r0KGSYfJADu/I2DiSD/U9P7CAqmiyc3H+0UxcyySfHo94GL74kLUvwCrlFpCfYe
         hND/L+W3MSIGUVVRB5TbGTm2n44KZRRnaIVHhQkRskNIkN2kw0UTaQ4sFPJOHeCd515z
         l7AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dYsVFhCrdFzymQrW11VWatLy1IpiH7e9KgAVON6gbDw=;
        b=0/CC6qaSCeVPBgDqHdn6PbjWZmzDKcN59HwbOu7svJlaoIEucPhraBPoYlslpFR3WD
         kQ71qRNV7JvfMh65dUoGM4lGR8TuurXKtUq4dA1/0K43vW6fSxvJ5VGxLMX0iT8iikkn
         nmNrKtVibGHT1kuNa5lhI+0aXf8sW59CE9zHSJseA6TnHX4TUlEkWIBKAk2NOuJhpNhi
         pW6lhw0/UalRQm7Si/vnPEzxlhwMeo267kbKZoHhOlGGscVqCNduihrNCy7FapY/yTNS
         qxmN39wheY6UVaGAsVvMxK1SHVVITxU+SUEGfJWnwugE7dkvDN0MjqNbFvfj438pRcyV
         0DUw==
X-Gm-Message-State: AOAM5317h4Z8XpRI30dj9ZzgXywWDk3AMuPEntMiNHJFWm9wQyB1XhNY
        Ys47vKFd2S4j1s4d8aYWGlr6rg==
X-Google-Smtp-Source: ABdhPJzKEKzpOf8nBNRu121896sO6b4YUiYtj9LnK0GChJVTz9htGZgmRX9zziTMIJWkkxjX7MvV5Q==
X-Received: by 2002:a5d:6c69:0:b0:205:8472:e251 with SMTP id r9-20020a5d6c69000000b002058472e251mr3662954wrz.227.1648112005283;
        Thu, 24 Mar 2022 01:53:25 -0700 (PDT)
Received: from bojack.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id c7-20020adffb07000000b002058a53f359sm2036154wrr.58.2022.03.24.01.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Mar 2022 01:53:24 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robert.foss@linaro.org, andrzej.hajda@intel.com,
        Nicolas Belin <nbelin@baylibre.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-kernel@vger.kernel.org, jonas@kwiboo.se,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Laurent.pinchart@ideasonboard.com, jernej.skrabec@gmail.com
Subject: Re: [PATCH 0/3] drm: bridge: it66121: Add audio support
Date:   Thu, 24 Mar 2022 09:53:22 +0100
Message-Id: <164811198461.361879.12488552321734676872.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220316135733.173950-1-nbelin@baylibre.com>
References: <20220316135733.173950-1-nbelin@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 16 Mar 2022 14:57:30 +0100, Nicolas Belin wrote:
> This patch series adds the audio support on the it66121 HDMI bridge.
> 
> Patch 1 updates the ITE 66121 HDMI bridge bindings in order to support
> audio.
> 
> Patch 2 sets the register page length or window length of the ITE 66121
> HDMI bridge to 0x100 according to the documentation.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/3] dt-bindings: display: bridge: it66121: Add audio support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=cc2f2df48a17980e815fa09a43b81861f7ebad85
[2/3] drm: bridge: it66121: Fix the register page length
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=003a1bd6a2a55c16cb2451153533dbedb12bebec
[3/3] drm: bridge: it66121: Add audio support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e0fd83dbe92426e4f09b01111d260d2a7dc72fdb

-- 
Neil
