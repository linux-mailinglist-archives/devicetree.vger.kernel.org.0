Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3DAB4678D3
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 14:51:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232913AbhLCNy4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 08:54:56 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:54981 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238663AbhLCNyy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 08:54:54 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailnew.nyi.internal (Postfix) with ESMTP id 246865800EF;
        Fri,  3 Dec 2021 08:51:30 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Fri, 03 Dec 2021 08:51:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:content-type:mime-version
        :content-transfer-encoding; s=fm1; bh=DjoRVDOV/7ZOVNAsunjkCECVVG
        QRaa3dBgHKlisr8g4=; b=bCrIRi0ejN+v0nKHnsPTDofnEsoDWSoAT4CJIeoleY
        DEnet5/UHKle+HuCZTpbj7Wfa8tfn/NM0Ip/JwuNM/Jb9Lsc/Q2GvvqcFkUkbUsR
        kptLpjA6Twg/4IW7ZLHRUlkL7P+RZSf3lL6BA0jOA9wDGKk9vMej2t4pINTaj2XP
        4RhhlkyDILQ1rWNTsdeOT4awhxFaVv87jKxnJaEqn/xiyWOLO0gFh4FpFkVOh/Ir
        zu7dMj6aYhE1DiUxihi10uJsA0YrAcRaEjv33B2vocwqCuqfMnJ/qbaB8jszHHcV
        Nthzo37p113sRexonTxUKimr2QAwLKWsPdViF21I70qQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:message-id:mime-version:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=DjoRVD
        OV/7ZOVNAsunjkCECVVGQRaa3dBgHKlisr8g4=; b=DbumxWWtehAYOniObV98F3
        AnxH/Qvw31N1W0tzNS6MMTdJgKOgkj7q3eGRTbzXzYHn0Q/VneCZTAHVQcHVRGfo
        H7od6mWL8E/YMZMTF2N5XUn2NHMD7P4TOEUxwwxGzGV6N8o0Le0H4oTmeAQXvvqy
        XQsE65SdA84v+Mpjw/+S4xdPVtDfamVAZCszmPPcsiEjnqiVKEZZpfDt4Yh5DUWi
        aYBfXJj+VFRjpyjSxH3BOykWgfEn5/nae9rCdsNYt7B8Q+fBguHf50HHQ94sSmQm
        UuAeG50m1Lr4zS9uNQ3e9XrLfk0ALrx6cqGjP9QpSMRe+m7TP9GyHcnizsJVg0vw
        ==
X-ME-Sender: <xms:4CCqYXExu48m-QZ1BeXX8rGOvJuQlbFTqQJYPLf_3hQRVpY88fpQwg>
    <xme:4CCqYUWvQTtxGOVbUZuN7aov7vQz2ewpk1pZH3lLtLHyVdL_bLzAXURWB__ervCIw
    yBaeF9b7U97DluQpUs>
X-ME-Received: <xmr:4CCqYZL2a580aefpD1zPkOKOdSZkUkViLSEq2DnRvxG22DmzBzz5z_6GOUiLef2ZzqwB25Eu49wkKYSuxWb3QCtVJUkBMueMEduLqcGCy8NRng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrieejgdehlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgtggfgsehtqhertdertdejnecuhfhrohhmpeforgigihhmvgcu
    tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvg
    hrnhepteeikefgffekgeekledtheduteetjefgkeeuvefhhfetgedugfektdeugeffgfef
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgi
    himhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:4CCqYVGU-g-DSWBA5Y_uWvraRIEAlTR3u8m0AIwFr-UkFBnAd1QtsQ>
    <xmx:4CCqYdWw4SN46Ml8jXHBZKv7suzsdRznjcuaIrO8HbMyD_w-ZdSUjQ>
    <xmx:4CCqYQNFOkdW1tJPQ4Uf2Y_15jDLPrKBbvpdxJorF8aditbizcsV9A>
    <xmx:4iCqYUPdTRVoK1UbyR_2278D13KISxnuG3iyWSfodrmp11Y2ozjIgg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Dec 2021 08:51:28 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>,
        linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 0/3] drm/vc4: Use the firmware to stop the display pipeline
Date:   Fri,  3 Dec 2021 14:51:23 +0100
Message-Id: <20211203135126.700165-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.33.1
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,=0D
=0D
The VC4 driver has had limited support to disable the HDMI controllers and=
=0D
pixelvalves at boot if the firmware has enabled them.=0D
=0D
However, this proved to be limited, and a bit unreliable so a new firmware=
=0D
command has been introduced some time ago to make it free all its resources=
 and=0D
disable any display output it might have enabled.=0D
=0D
This series takes advantage of that command to call it once the transition =
from=0D
simplefb to the KMS driver has been done.=0D
=0D
Let me know what you think,=0D
Maxime=0D
=0D
---=0D
=0D
Changes from v2:=0D
  - Use of_find_compatible_node instead of a phandle=0D
  - Use devm_rpi_firmware_get=0D
=0D
Maxime Ripard (3):=0D
  firmware: raspberrypi: Add RPI_FIRMWARE_NOTIFY_DISPLAY_DONE=0D
  drm/vc4: Remove conflicting framebuffers before callind bind_all=0D
  drm/vc4: Notify the firmware when DRM is in charge=0D
=0D
 drivers/gpu/drm/vc4/vc4_drv.c              | 27 ++++++++++++++++++----=0D
 drivers/gpu/drm/vc4/vc4_drv.h              |  2 ++=0D
 include/soc/bcm2835/raspberrypi-firmware.h |  1 +=0D
 3 files changed, 26 insertions(+), 4 deletions(-)=0D
=0D
-- =0D
2.33.1=0D
=0D
