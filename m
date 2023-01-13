Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FF78669016
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 09:07:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240752AbjAMIH2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 03:07:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239960AbjAMIGr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 03:06:47 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37A9474585
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:03:29 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id bk16so20254025wrb.11
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K4cg88Kvj07ysr7PkKeBFTLXDv0UkLAcK6N/8dHojlQ=;
        b=ygfMdWNuN2Z16VHFfsvMzsslRJmncYlx8ey16mv5SfPa6MmkB2lT66Wo4l6EBjARAB
         azqZFQ4UZzt3dX+0yqhdbmR/D8nvXcclLD9fhvSnIYXDs0aiLyyXXG3aS4yDlnk/miRG
         46xSCorwmANDOlRFh3/+GArMvqZSc38Ky6+YYWHi4W3iyXgTXYmzhP8FaC42QYZQQs3A
         WPMYAk/sFUvNQ8exZ0qIUsgbtqEsRX8sEwZgopuGbehKktSSR4jsqnlsrzcCOeJBv1UW
         GdCcPq8we34LMzE5UJYFVNOJiwejaWEXwq3De+0DxM24nzJkX1WJn9eDTgZNCPdsA10h
         n6HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K4cg88Kvj07ysr7PkKeBFTLXDv0UkLAcK6N/8dHojlQ=;
        b=B+O89umsgT7i5x9gofDATf51SxwOniQiYR7NTQmrTu9Y9KG9lczSeRpfiEeV0Bswbh
         vaWpvnkDopA3N8mHAByBl0yRikn6VY24At/G5Jc3C5igjsGNbLElNAvgBo3qQ3WjwOrS
         bb2BxxOWEQGkubMdNufSMWbfvppHOAWcKVeqAZXxTp7O8kSc4DKVh6It6dVJh8N6o/Iq
         oIYkQYrSuBDdiygMONsRJ6PAcjqUgfEOnNv3N2rk96rltqO9hdlzvWQughLheN/E6zwo
         4lBrkonYLHz+ryYFdJ7OXBnjZWJ+RCjr+qzFIOIz2KvWJPEwkNqn4aUEShwxKTnhGXyM
         h7gg==
X-Gm-Message-State: AFqh2koqtx9I640Ccg5nsjLltlMjCo6HWtZpTF5HLD7I1lJ1I0EhoOAp
        ikb8R116KtBDgE1dlRw5jCASDODH7unQ0OSm
X-Google-Smtp-Source: AMrXdXuDaI+YoVgx3YLGtons/nw2H6aGdJuLoH2gqOGJh5Z6O6VljoPp9a/p4NafXMumh8+IsRd77A==
X-Received: by 2002:a5d:460c:0:b0:2bd:e208:1e3e with SMTP id t12-20020a5d460c000000b002bde2081e3emr588705wrq.62.1673597007754;
        Fri, 13 Jan 2023 00:03:27 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id o7-20020a5d62c7000000b002bbeda3809csm12609674wrv.11.2023.01.13.00.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 00:03:27 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     linux-amlogic@lists.infradead.org,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
In-Reply-To: <20230111211350.1461860-1-martin.blumenstingl@googlemail.com>
References: <20230111211350.1461860-1-martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2 0/6] arm64: dts: small .dts fixes
Message-Id: <167359700681.3617136.9064230631644160118.b4-ty@linaro.org>
Date:   Fri, 13 Jan 2023 09:03:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 11 Jan 2023 22:13:44 +0100, Martin Blumenstingl wrote:
> This series contains a few .dts fixes which were found during review of
> [0] (which is now the first patch in this series).
> 
> 
> 
> [0] https://lore.kernel.org/linux-amlogic/20230110215926.1296650-1-martin.blumenstingl@googlemail.com/
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.3/arm64-dt)

[1/6] arm64: dts: meson-gxl: jethub-j80: Fix WiFi MAC address node
      https://git.kernel.org/amlogic/c/f95acdb2b4af21caae2c76a48e565158181386ca
[2/6] arm64: dts: meson-gxl: jethub-j80: Fix Bluetooth MAC node name
      https://git.kernel.org/amlogic/c/cb199de1d3aecb02556d8a6e26393015effa0a9f
[3/6] arm64: dts: meson-axg: jethub-j1xx: Fix MAC address node names
      https://git.kernel.org/amlogic/c/2f66eeb06e3e8b1cac9e9093be3baadbac2709eb
[4/6] arm64: dts: meson-gx: Fix Ethernet MAC address unit name
      https://git.kernel.org/amlogic/c/8ed5310356bfa47cc6bb4221ae6b21258c52e3d1
[5/6] arm64: dts: meson-g12a: Fix internal Ethernet PHY unit name
      https://git.kernel.org/amlogic/c/e7303651bbc76c848007f1cfac1fbeaa65f600d1
[6/6] arm64: dts: meson-gx: Fix the SCPI DVFS node name and unit address
      https://git.kernel.org/amlogic/c/f189c869ad92787ddd753558bcbae89d75825bb6

These changes has been applied on the intermediate git tree [1].

The v6.3/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil
