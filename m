Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7DDB673332
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 09:01:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229886AbjASIB0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 03:01:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230133AbjASIAm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 03:00:42 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65E995EF86
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 23:59:58 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id b7so1001586wrt.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 23:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYZCg/3/ut1o/d76SDR2YpB6Reg9gtu46TPyema/J8U=;
        b=l3SXRFR99cRKVe4ziF5/ZZlZYvM8yL6jfi5q1UOpIcyhtsVx2gCMuJKrDts1VDA7mP
         WSyz6+o14u2NecPwikH7ubx1PMJO+TNhjinigGB3BfPFeEYEhcXQ/xtbLRWvXmdoiILL
         BJkkWJzXrHdfII/sLWWE9WuzYY5hFqQx/aEzCHtRGsENqtmfs3EQ7+IP6hLue9p6SOIt
         efuouoMyKDfNLyl4//UyK/JYNpu/6ryz20VydOKs6OGYokIOebXMIvBz+zhq43qTtBOK
         Hy1i4GesLCPD4Ts+CBVrQOWSRfpr9etWv3VI5EY7/nuL89fFFr5kYkPANkFeC0eiD45b
         e6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JYZCg/3/ut1o/d76SDR2YpB6Reg9gtu46TPyema/J8U=;
        b=JKjsPQzs0DpKQsPVSHz3cDWbiaIh4sumfwLlEoIcsKnxqUMps1p2KXL2MuSDLpoGxh
         ymGh5Prkgs3D6gdfMhG/BLXjadXlzgm+/H3iRML4JsjaCgW5MeSSVjC0VkgWWIvRSaGi
         XIzLiCADWkJ2zeLDAEC0K+13d0zBOawEf0PBCBrkvF1ZAQjcfaJIejYhZlnTQHKLrJNk
         hNhzgQzG4KvSgA/lZzxW7Vg1jWLxuitxDnX7pXjgwWzn1jWq4gnWrENMpvSL6XrkQJRS
         B4c+nau9E74zP3cRFZUIgm42KcSfi3FqwwwqYKB+2zqh5gd0HgL8CmefGVW83sXK3gDR
         dFjg==
X-Gm-Message-State: AFqh2kqH5x7FybP9dQn2E5GUTdLXnfNwBlX90VaM48orXpzHKNAPzTGV
        UbBLlZVABAGwOkFs46gUydx/ZQ==
X-Google-Smtp-Source: AMrXdXt7IDRcISpgYHJKFxxxVlaUR8+5HGmdYX3ntg5hNjtazHCiYh+3KWeBHvSoEYDOssuXud1zDg==
X-Received: by 2002:a05:6000:25c:b0:2bd:db3b:33f5 with SMTP id m28-20020a056000025c00b002bddb3b33f5mr8649143wrz.3.1674115196983;
        Wed, 18 Jan 2023 23:59:56 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id f6-20020adffcc6000000b002bbdcd15e44sm29048739wrs.37.2023.01.18.23.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 23:59:56 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20230119053031.21400-1-christianshewitt@gmail.com>
References: <20230119053031.21400-1-christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: remove CPU opps below 1GHz for G12A boards
Message-Id: <167411519619.302421.6750539043100229813.b4-ty@linaro.org>
Date:   Thu, 19 Jan 2023 08:59:56 +0100
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

On Thu, 19 Jan 2023 05:30:31 +0000, Christian Hewitt wrote:
> Amlogic G12A devices experience CPU stalls and random board wedges when
> the system idles and CPU cores clock down to lower opp points. Recent
> vendor kernels include a change to remove 100-250MHz and other distro
> sources also remove the 500/667MHz points. Unless all 100-667Mhz opps
> are removed or the CPU governor forced to performance stalls are still
> observed, so let's remove them to improve stability and uptime.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.3/arm64-dt)

[1/1] arm64: dts: meson: remove CPU opps below 1GHz for G12A boards
      https://git.kernel.org/amlogic/c/3cbd431c2b34d84605d358c8c57654193fd661fb

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
