Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF78245D722
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 10:25:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346850AbhKYJ2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 04:28:16 -0500
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.82]:30411 "EHLO
        mo4-p02-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346547AbhKYJ0P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 04:26:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1637832179;
    s=strato-dkim-0002; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=cz15fjBpoV7Mb0S4w4OSoYvu8nNREJnKNkzmm7UNS+8=;
    b=aKEfnt4rXCy/AWgHeCQhbE89PfLB8/zhhOYLRoHbcuWnPCXlsyldXQQSR23avgeP2e
    46kg0VRBlxx4p9HI1quw/oEueD4TX4ESJikB/Fo1QMWTXdBDI0Sh2e+/ftHSCuZuY6yW
    vE463asxlnONh5g7bG2c2Se8txXm63juQadgPRXlNOT0eHMgy3uyaUnDtVyyZ99rvGwL
    jkhCBIh7ymIkUhIZ47pa3fT0ugiZl+lLhavO8EoxbgHwRFOeg03kJ59+2cZXuqg1kibU
    Vy7YeWVpx2HDt+RHpRnh74JUmUfOMoJ/RgNf8KsrvKJMolkULEbHvnYiAfPX/AuC5KbQ
    dLoQ==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7gpw91N5y2S3iMMUrw=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box
    by smtp.strato.de (RZmta 47.34.10 DYNA|AUTH)
    with ESMTPSA id e05ed8xAP9Mw6Vn
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
        (Client did not present a certificate);
    Thu, 25 Nov 2021 10:22:58 +0100 (CET)
Content-Type: text/plain;
        charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: [PATCH v8 6/8] MIPS: DTS: CI20: Add DT nodes for HDMI setup
From:   "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <CAMuHMdU8v+pu0faQ8U-=9HAwwOfOh97O8AXv3Rp_VaZ+LiyzxQ@mail.gmail.com>
Date:   Thu, 25 Nov 2021 10:22:57 +0100
Cc:     Paul Cercueil <paul@crapouillou.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Kees Cook <keescook@chromium.org>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Ezequiel Garcia <ezequiel@collabora.com>,
        Harry Wentland <harry.wentland@amd.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Paul Boddie <paul@boddie.org.uk>,
        OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS 
        <devicetree@vger.kernel.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <62DB39B7-8390-4BD8-9EA8-3CD16D9C4BA1@goldelico.com>
References: <cover.1637691240.git.hns@goldelico.com>
 <d62023e0872e9b393db736f4a0ecf04b3fc1c91b.1637691240.git.hns@goldelico.com>
 <O0K13R.TIL3JBQ5L8TO1@crapouillou.net>
 <04F0ED7C-3D18-4CCF-8F10-E0A36B0E4F4B@goldelico.com>
 <CAMuHMdWO3yosf5eyTPpydVuT3pwvuw9Q=2BUxq+rxPjE3iSnrw@mail.gmail.com>
 <B622D2B5-D631-43F3-9D50-2B41681C78AB@goldelico.com>
 <CAMuHMdV5sjVg6BEm3zgvvsJDHJwKP1A8rh-sama8suCG5SYQyA@mail.gmail.com>
 <CFE43R.SM1CDEX6QKEB3@crapouillou.net>
 <CAMuHMdU8v+pu0faQ8U-=9HAwwOfOh97O8AXv3Rp_VaZ+LiyzxQ@mail.gmail.com>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
X-Mailer: Apple Mail (2.3445.104.21)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

> Am 25.11.2021 um 10:13 schrieb Geert Uytterhoeven =
<geert@linux-m68k.org>:
>=20
>>=20
>> I think you can use a pinctrl state as well, specifying the pin and =
the
>> 'output-low' property.
>=20
> Yes, if the pin controller supports that.  =46rom Niklaus' emails, I =
was
> under the impression it doesn't.

Well, it look as as if ingenic,pinctrl.yaml does support output-low but =
I
wasn't aware of that. Haven't seen before...

So it might be possible to add it, but IMHO this can be left for future =
study (by
someone with spare time to find and build a test scenario - it might =
involve adding
hardware to tap the DDC signals between CI20 board and monitor with an =
oscilloscope).

BR and thanks,
Nikolaus

