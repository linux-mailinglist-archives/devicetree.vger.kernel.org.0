Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C20CD2A366A
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 23:22:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725933AbgKBWWa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 17:22:30 -0500
Received: from pb-smtp2.pobox.com ([64.147.108.71]:64739 "EHLO
        pb-smtp2.pobox.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726755AbgKBWWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 17:22:30 -0500
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
        by pb-smtp2.pobox.com (Postfix) with ESMTP id EC26F8F794;
        Mon,  2 Nov 2020 17:22:27 -0500 (EST)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from:to:cc
        :subject:date:message-id:mime-version:content-transfer-encoding;
         s=sasl; bh=Ja0Gm+tvpv2X2OGs0LV9M9FMApY=; b=Pm/ZqLrJ8jyU7kTnwsEs
        rOAZewW2VsyxQ1Mzpiz+awrEfKSHefhGGyMr6rO4anvuGu1v3VoR3JaORWjcHNNl
        //lR6fY1jcJLO6qlZ4bQ9PrlkA9t26UFKBkDCHBVsTmnT4q9Ei7rBPfIwPgEjjW1
        vA+TUCA9ROOrxAZxMJfJhQM=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp2.pobox.com (Postfix) with ESMTP id E2F128F793;
        Mon,  2 Nov 2020 17:22:27 -0500 (EST)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=from:to:cc:subject:date:message-id:mime-version:content-transfer-encoding;
 s=2016-12.pbsmtp; bh=JYm00/J+MypMLfeydmj5yrw5cdZ1uEVQT1iPi8aLrIQ=;
 b=axpJorVhck67K/rybnbfmVxCTmxjBXc+lvQXq1TrRTpW3SpHMDYiQSClIxSRMXMKlLlALVewWbD3fGbTWwY5GV9QgxAIdXldX5dqiEV3s/V1yb6R+alSIpP25he8eVqZiZPPj3xfcK+UNtEhMH74uCXme2nRsAFOt8996i2kF38=
Received: from yoda.home (unknown [24.203.50.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 6073E8F78E;
        Mon,  2 Nov 2020 17:22:27 -0500 (EST)
        (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
        by yoda.home (Postfix) with ESMTP id 6BA842DA0C6C;
        Mon,  2 Nov 2020 17:22:26 -0500 (EST)
From:   Nicolas Pitre <nico@fluxnic.net>
To:     Boris Brezillon <boris.brezillon@collabora.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Nicolas Pitre <npitre@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Matthew Schnoor <matthew.schnoor@intel.com>
Subject: [PATCH v3 0/2] MIPI I3c HCI (Host Controller Interface) driver
Date:   Mon,  2 Nov 2020 17:22:18 -0500
Message-Id: <20201102222220.1785859-1-nico@fluxnic.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Pobox-Relay-ID: E3AF8A74-1D59-11EB-B52D-74DE23BA3BAF-78420484!pb-smtp2.pobox.com
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MIPI I3C HCI (Host Controller Interface) specification defines
a common software driver interface to support compliant MIPI I3C
host controller hardware implementations from multiple vendors. This
is the initial Linux driver implementing support for this specification.

Due to limitations in the I3C subsystem, this driver doesn't implement
everything the spec specifies. For example, scheduled commands,
auto-commands and NCM are major features not yet supported.

There are different revisions of the spec: v1.0, v1.1 (to be released
imminently), and 2.0 (still under active development). All of them are
supported with varying degree due to the above. And of course v2 support
is likely to change as the spec is finalized, but it is included now
as all I have for testing at the moment is based on the latest v2 draft.

Even v1.0 hardware is still scarce so it hasn't been tested yet. As more
hardware becomes available for testing it is expected that adjustments
will be needed on top of this submission. But it is best to have the
current code merged earlier so to gain better exposure and to create
an incentive for future contributions.

Feedback appreciated.

Changes from v2:

- resync with latest draft of HCI v1.1 and v2 specs, especially the v2 cm=
d
  descriptor format and new error codes
- more extended capability table parsing from the v2 spec
- tightened PIO error handling somewhat
- minor cosmetic changes
- precision on the DT binding based on Rob Herring's review
- small changes based on Miquel Raynal's review
- small changes based on Boris Brezillon's review
- some more small changes based on Sakari Ailus' review

Changes from v1:

- moved DT binding to schema format (Rob)
- fix sparse warnings (kernel test robot)
- fix build warnings on 32-bit targets (kernel test robot)
- avoid PIO_OFFSET symbol conflict (kernel test robot)
- minor cosmetic changes

diffstat:

 .../devicetree/bindings/i3c/mipi-i3c-hci.yaml   |   45 +
 drivers/i3c/master/Kconfig                      |   13 +
 drivers/i3c/master/Makefile                     |    1 +
 drivers/i3c/master/mipi-i3c-hci/Makefile        |    6 +
 drivers/i3c/master/mipi-i3c-hci/cmd.h           |   67 ++
 drivers/i3c/master/mipi-i3c-hci/cmd_v1.c        |  378 ++++++
 drivers/i3c/master/mipi-i3c-hci/cmd_v2.c        |  309 +++++
 drivers/i3c/master/mipi-i3c-hci/core.c          |  798 +++++++++++++
 drivers/i3c/master/mipi-i3c-hci/dat.h           |   32 +
 drivers/i3c/master/mipi-i3c-hci/dat_v1.c        |  184 +++
 drivers/i3c/master/mipi-i3c-hci/dct.h           |   16 +
 drivers/i3c/master/mipi-i3c-hci/dct_v1.c        |   36 +
 drivers/i3c/master/mipi-i3c-hci/dma.c           |  784 +++++++++++++
 drivers/i3c/master/mipi-i3c-hci/ext_caps.c      |  308 +++++
 drivers/i3c/master/mipi-i3c-hci/ext_caps.h      |   19 +
 drivers/i3c/master/mipi-i3c-hci/hci.h           |  144 +++
 drivers/i3c/master/mipi-i3c-hci/ibi.h           |   42 +
 drivers/i3c/master/mipi-i3c-hci/pio.c           | 1041 +++++++++++++++++
 .../i3c/master/mipi-i3c-hci/xfer_mode_rate.h    |   79 ++
 19 files changed, 4302 insertions(+)

