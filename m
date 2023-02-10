Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEF44691F7F
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 14:05:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231965AbjBJNFt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 08:05:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231865AbjBJNFt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 08:05:49 -0500
X-Greylist: delayed 303 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 10 Feb 2023 05:05:45 PST
Received: from m204-230.eu.mailgun.net (m204-230.eu.mailgun.net [161.38.204.230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 121F677173
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 05:05:45 -0800 (PST)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=hewittfamily.org.uk;
 q=dns/txt; s=s1; t=1676034343; x=1676041543; h=To: To: References:
 Message-Id: Content-Transfer-Encoding: Cc: Date: In-Reply-To: From: From:
 Subject: Subject: Mime-Version: Content-Type: Sender: Sender;
 bh=e+8a/112VSKe5F35nUgJv+v3ducgtP4FGlMz8j0lTts=;
 b=O+oPb6sRz+VmXSi5ywHVmddIhDEgXB5PDndQChH4IX8d4AwKz1DjYwm4PyjwRJaYzt/gwDfprl2J2+ckvmQBKOQrqVk0Q5OQeZwpj9IPm+aXHZGDpK6tWis1Ax9Jci9dagdnciY/ldxEZrcPfbdeUgSoWX38ZABcPo41XVVdijGoaQmiBtGHEw1s1kKn5vXx44jKu4rUHYx1UZXLa1raZOJj38u6gOiXWZd9JinV3s8kmKEbCPm9YWC8vzYvG0I0XDpE4LXNiV9WAE9ABlvbXSA4ZutETk/FS4WeL/sPMKGkbFDN81rrDIxpFmSEo9sYPdjJ6CeuhA1jkFmWj2qjcA==
X-Mailgun-Sending-Ip: 161.38.204.230
X-Mailgun-Sid: WyIzZDI1OSIsImRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnIiwiZTM3MjAiXQ==
Received: from mail.hewittfamily.org.uk (<unknown> [87.200.95.144]) by d8c37b8c1577 with
 SMTP id 63e63ff8d4760f9c11a3ed9f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 10 Feb 2023 13:00:39 GMT
Sender: christian@hewittfamily.org.uk
Received: from smtpclient.apple (unknown [167.99.200.149])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.hewittfamily.org.uk (Postfix) with ESMTPSA id D53FE7D7AB9;
        Fri, 10 Feb 2023 17:00:34 +0400 (+04)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
From:   Christian Hewitt <christian@hewittfamily.org.uk>
In-Reply-To: <a376b71b-f0df-1276-d05f-be1c5bab90ae@linaro.org>
Date:   Fri, 10 Feb 2023 17:00:24 +0400
Cc:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <25CFEEC0-066C-45A5-AC87-31C30C364B57@hewittfamily.org.uk>
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
 <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org>
 <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
 <61db3f1c-b780-4385-f991-ebb4c3423791@linaro.org>
 <4dfc29ef-4d88-f899-3f96-fded32f5736f@gmail.com>
 <a376b71b-f0df-1276-d05f-be1c5bab90ae@linaro.org>
To:     neil.armstrong@linaro.org
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Synology-Spam-Status: score=2.909, required 5, TO_DN_EQ_ADDR_SOME 0, SUSPICIOUS_RECIPS 2.51, MID_RHS_MATCH_FROM 0, FROM_HAS_DN 0, TO_DN_SOME 0, MV_CASE 0.5, FREEMAIL_ENVRCPT 0, TAGGED_RCPT 0, __THREADED 0, MIME_GOOD -0.1, TO_MATCH_ENVRCPT_ALL 0, RCPT_COUNT_SEVEN 0, RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0, FREEMAIL_CC 0, __HDRS_LCASE_KNOWN 0, NO_RECEIVED -0.001
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[snip]

I=E2=80=99m running 6.1.11 with the SDIO interrupts patch reverted and =
all has been stable
on the fleet of boxes/boards I do regular testing with (GXBB, GXL, GXM, =
and G12B)
including a GXL/S905D box with QCA9337 SDIO module (not Broadcom):

dmesg | grep mmc:

[    0.367445] meson-gx-mmc d0072000.mmc: Got CD GPIO
[    0.367585] meson-gx-mmc d0074000.mmc: allocated mmc-pwrseq
[    0.438023] mmc0: new high speed SDHC card at address aaaa
[    0.439588] mmcblk0: mmc0:aaaa SL16G 14.8 GiB=20
[    0.445490]  mmcblk0: p1 p2
[    0.467743] mmc1: new HS200 MMC card at address 0001
[    0.469224] mmcblk1: mmc1:0001 8GME4R 7.28 GiB=20
[    0.473984] mmcblk1boot0: mmc1:0001 8GME4R 4.00 MiB=20
[    0.477618] mmcblk1boot1: mmc1:0001 8GME4R 4.00 MiB=20
[    0.481144] mmcblk1rpmb: mmc1:0001 8GME4R 512 KiB, chardev (242:0)
[    1.241005] meson-gx-mmc d0070000.mmc: allocated mmc-pwrseq
[    1.315526] mmc2: queuing unknown CIS tuple 0x01 [d9 01 ff] (3 bytes)
[    1.325778] mmc2: queuing unknown CIS tuple 0x1a [01 01 00 02 07] (5 =
bytes)
[    1.330215] mmc2: queuing unknown CIS tuple 0x1b [c1 41 30 30 ff ff =
32 00] (8 bytes)
[    1.331121] mmc2: queuing unknown CIS tuple 0x14 [] (0 bytes)
[    1.334849] mmc2: new ultra high speed SDR104 SDIO card at address =
0001
[    2.151829] fsck: /dev/mmcblk0p1: 174 files, 16383/65501 clusters
[    3.027147] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data =
mode. Quota mode: disabled.
[   11.436461] ath10k_sdio mmc2:0001:1: qca9377 hw1.1 sdio target =
0x05020001 chip_id 0x00000000 sub 0000:0000
[   11.436498] ath10k_sdio mmc2:0001:1: kconfig debug 0 debugfs 0 =
tracing 0 dfs 0 testmode 0
[   11.437107] ath10k_sdio mmc2:0001:1: firmware ver =
WLAN.TF.1.1.1-00061-QCATFSWPZ-1 api 5 features ignore-otp crc32 7746e551
[   11.637668] ath10k_sdio mmc2:0001:1: failed to fetch board data for =
bus=3Dsdio,vendor=3D0271,device=3D0701,subsystem-vendor=3D0000,subsystem-d=
evice=3D0000 from ath10k/QCA9377/hw1.0/board-2.bin
[   11.662008] ath10k_sdio mmc2:0001:1: board_file api 1 bmi_id N/A =
crc32 544289f7
[   13.058331] meson-gx-mmc d0070000.mmc: unaligned sg offset 76, =
disabling descriptor DMA for transfer
[   13.113495] ath10k_sdio mmc2:0001:1: htt-ver 3.32 wmi-op 4 htt-op 3 =
cal otp max-sta 32 raw 0 hwcrypto 1
[   13.208767] mmc2: queuing unknown CIS tuple 0x01 [d9 01 ff] (3 bytes)
[   13.218831] mmc2: queuing unknown CIS tuple 0x1a [01 01 00 02 07] (5 =
bytes)
[   13.223276] mmc2: queuing unknown CIS tuple 0x1b [c1 41 30 30 ff ff =
32 00] (8 bytes)
[   13.224178] mmc2: queuing unknown CIS tuple 0x14 [] (0 bytes)

I have working WiFi and the connection is stable enough for Kodi to =
stream 1080p
movies over SMB from a NAS several rooms away.

After the 3x patches landed this morning I=E2=80=99ve reverted the =
revert (restoring SDIO
interrupts) and run testing. I see no issues with the Broadcom based =
devices, but
the QCA9337 box throws mmc2 errors and I lose ath10k_sdio WiFi:

[    0.367531] meson-gx-mmc d0072000.mmc: Got CD GPIO
[    0.370721] meson-gx-mmc d0074000.mmc: allocated mmc-pwrseq
[    0.443723] mmc0: new high speed SDHC card at address aaaa
[    0.445327] mmcblk0: mmc0:aaaa SL16G 14.8 GiB=20
[    0.451643]  mmcblk0: p1 p2
[    0.467863] mmc1: new HS200 MMC card at address 0001
[    0.469371] mmcblk1: mmc1:0001 8GME4R 7.28 GiB=20
[    0.473818] mmcblk1boot0: mmc1:0001 8GME4R 4.00 MiB=20
[    0.477483] mmcblk1boot1: mmc1:0001 8GME4R 4.00 MiB=20
[    0.480965] mmcblk1rpmb: mmc1:0001 8GME4R 512 KiB, chardev (242:0)
[    1.237254] meson-gx-mmc d0070000.mmc: allocated mmc-pwrseq
[    1.311137] mmc2: queuing unknown CIS tuple 0x01 [d9 01 ff] (3 bytes)
[    1.321494] mmc2: queuing unknown CIS tuple 0x1a [01 01 00 02 07] (5 =
bytes)
[    1.326091] mmc2: queuing unknown CIS tuple 0x1b [c1 41 30 30 ff ff =
32 00] (8 bytes)
[    1.327011] mmc2: queuing unknown CIS tuple 0x14 [] (0 bytes)
[    1.330601] mmc2: new ultra high speed SDR104 SDIO card at address =
0001
[    2.147468] fsck: /dev/mmcblk0p1: 174 files, 16383/65501 clusters
[    3.013209] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data =
mode. Quota mode: disabled.
[   11.529545] ath10k_sdio mmc2:0001:1: qca9377 hw1.1 sdio target =
0x05020001 chip_id 0x00000000 sub 0000:0000
[   11.529579] ath10k_sdio mmc2:0001:1: kconfig debug 0 debugfs 0 =
tracing 0 dfs 0 testmode 0
[   11.530109] ath10k_sdio mmc2:0001:1: firmware ver =
WLAN.TF.1.1.1-00061-QCATFSWPZ-1 api 5 features ignore-otp crc32 7746e551
[   11.709471] ath10k_sdio mmc2:0001:1: failed to fetch board data for =
bus=3Dsdio,vendor=3D0271,device=3D0701,subsystem-vendor=3D0000,subsystem-d=
evice=3D0000 from ath10k/QCA9377/hw1.0/board-2.bin
[   11.713685] ath10k_sdio mmc2:0001:1: board_file api 1 bmi_id N/A =
crc32 544289f7
[   13.030691] ath10k_sdio mmc2:0001:1: ignoring unsolicited htc ep0 =
event
[   13.145651] ath10k_sdio mmc2:0001:1: rx underflow interrupt error
[   14.148946] ath10k_sdio mmc2:0001:1: failed to receive control =
response completion, polling..
[   15.172824] ath10k_sdio mmc2:0001:1: ctl_resp never came in (-110)
[   15.172854] ath10k_sdio mmc2:0001:1: failed to connect to HTC: -110
[   15.175891] ath10k_sdio mmc2:0001:1: could not init core (-110)
[   15.248722] mmc2: queuing unknown CIS tuple 0x01 [d9 01 ff] (3 bytes)
[   15.258621] mmc2: queuing unknown CIS tuple 0x1a [01 01 00 02 07] (5 =
bytes)
[   15.262933] mmc2: queuing unknown CIS tuple 0x1b [c1 41 30 30 ff ff =
32 00] (8 bytes)
[   15.263802] mmc2: queuing unknown CIS tuple 0x14 [] (0 bytes)
[   15.266333] ath10k_sdio mmc2:0001:1: could not probe fw (-110)

I=E2=80=99ve had the impression for some time that this SDIO module is =
less tolerant of
mmc things than the Broadcom modules, and that might be relevant. =
However I can
reproduce this consistently by reverting one patch (reverting the revert =
of the
SDIO interrupts addition).

Please let me know how I can assist with testing or diagnostics. It=E2=80=99=
s no trouble
to give remote access to the box if that would help.

Christian

