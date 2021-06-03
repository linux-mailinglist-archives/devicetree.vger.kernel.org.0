Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D26F399E31
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 11:56:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbhFCJ6I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 05:58:08 -0400
Received: from gloria.sntech.de ([185.11.138.130]:55270 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229576AbhFCJ6H (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 3 Jun 2021 05:58:07 -0400
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1lok5L-0004PQ-Ne; Thu, 03 Jun 2021 11:56:19 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     alsa-devel@alsa-project.org, Chris Morgan <macroalpha82@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Chris Morgan <macromorgan@hotmail.com>,
        devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        linux-rockchip@lists.infradead.org, jbx6244@gmail.com,
        robh+dt@kernel.org, tiwai@suse.com, lee.jones@linaro.org,
        pierre-louis.bossart@linux.intel.com, lgirdwood@gmail.com,
        broonie@kernel.org
Subject: Re: (subset) [PATCH v12 0/4] ASoC: codecs: add rk817 support
Date:   Thu,  3 Jun 2021 11:56:17 +0200
Message-Id: <162271417225.3165003.1198477663030831596.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210519203754.27184-1-macroalpha82@gmail.com>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 15:37:50 -0500, Chris Morgan wrote:
> This series is to add support for the Rockchip rk817 audio codec which
> is present in all Rockchip rk817 MFD chips.
> 
> Changes in v12:
>  - Updated codec cell in MFD driver to a single line.
> Changes in v11:
>  - Stopped checking for presence of parent node in codec driver, as
>    driver should never be called if parent device doesn't exist to call
>    it.
>  - Made codec subnode optional and stopped returning errors if it is
>    missing.
>  - Downgraded missing codec clock message from dev_err to dev_dbg.
>    Users who choose to use the rk817 PMIC but do not choose to use the
>    codec will not get an error message unless they have debugging
>    enabled, whereas users who wish to use the codec but don't have the
>    clock defined will not get an error message unless they have
>    debug messages enabled. This seems like a fair compromise between
>    mututally exclusive users. Note that errors with the clock or codec
>    will still result in a dev_err.
>  - Updated DT documentation to note that codec subnode is optional if
>    no properties are to exist beneath it.
> Changes in v10:
>  - Correct order of test/ack/signed-off to chronological order.
>  - Removed ifdef from mfd driver keep cell from being added when the
>    codec was not to be built.
>  - Changed codec DT parsing messages from error to debug to prevent
>    errors in dmesg log in the rare but valid case a user has the rk817
>    PMIC but does not use the codec.
> Changes in v9:
>  - Add cover letter.
>  - Remove documentation for interrupt parent per Rob Herring's request.
>  - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
>    robot.
> Changes in v8:
>  - Added additional documentation for missing properties of
>    #sound-dai-cells, interrupt-parent, and wakeup-source for mfd
>    documentation.
>  - Corrected order of elements descriptions in device tree documentation.
>  - Changed name of "mic-in-differential" to
>    "rockchip,mic-in-differential".
>  - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
>  - Removed unused resets and reset-names from the i2s1_2ch node.
> Changes in v7:
>  - Removed ifdef around register definitions for MFD.
>  - Replaced codec documentation with updates to MFD documentation.
>  - Reordered elements in example to comply with upstream rules.
>  - Added binding update back for Odroid Go Advance as requested.
>  - Submitting patches from gmail now.
> Changes in v6:
>  - Included additional project maintainers for correct subsystems.
>  - Removed unneeded compatible from DT documentation.
>  - Removed binding update for Odroid Go Advance (will do in separate
>    series).
> Changes in v5:
>  - Move register definitions from rk817_codec.h to main rk808.h register
>    definitions.
>  - Add volatile register for codec bits.
>  - Add default values for codec bits.
>  - Removed of_compatible from mtd driver (not necessary).
>  - Switched to using parent regmap instead of private regmap for codec.
> Changes in v4:
>  - Created set_pll() call.
>  - Created user visible gain control in mic.
>  - Check for return value of clk_prepare_enable().
>  - Removed duplicate clk_prepare_enable().
>  - Split DT documentation to separate commit.
> Changes in v3:
>  - Use DAPM macros to set audio path.
>  - Updated devicetree binding (as every rk817 has this codec chip).
>  - Changed documentation to yaml format.
>  - Split MFD changes to separate commit.
> Changes in v2:
>  - Fixed audio path registers to solve some bugs.
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
      commit: 18d5c7bf50c6d820c366c2a23d71d468b14c87d6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
