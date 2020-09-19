Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEA7D270FC1
	for <lists+devicetree@lfdr.de>; Sat, 19 Sep 2020 19:26:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726463AbgISR0V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Sep 2020 13:26:21 -0400
Received: from mout.kundenserver.de ([217.72.192.73]:35141 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726449AbgISR0V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Sep 2020 13:26:21 -0400
X-Greylist: delayed 307 seconds by postgrey-1.27 at vger.kernel.org; Sat, 19 Sep 2020 13:26:20 EDT
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1My3AX-1kggXB2VMV-00zUuP; Sat, 19 Sep 2020 19:21:02 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
        Dan Murphy <dmurphy@ti.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org,
        Adrian Schmutzler <freifunk@adrianschmutzler.de>
Subject: [PATCH 1/2] dt-bindings: leds: add LED_FUNCTION for wlan2g/wlan5g
Date:   Sat, 19 Sep 2020 19:19:12 +0200
Message-Id: <20200919171913.56765-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:X37wciMIIHTfWadoL7buhSZqj1vOgngSU6j8yI62UFVvJJuJqNt
 QJEzNpbO052O7sSjcemLMSHkisL2ZA36ryBkgCf9VFqxmMLQEvQJK0qremsDr5jF3UW1GYH
 QE8+iTu51aqDqmDmlX/+a00FODZRoo1+3AowhDj1zX/hpJw/zrvjU3QPvxJ2b7DNJGUjZVQ
 Uq8Sm6OeCJ7x+l5oj4Jtg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ATkS/QO8u9A=:pNDHvIdmnJ4iGyONhlsOQE
 SZxKb3RqidKKErjOAPD2S9nRBMxsJ6OAwwNWwo22vNiqGJPK70zz5dRftgbtpZa7IYm9PR3/P
 O0NK24VPBC/HcfMUPabduz43HQBdl8UBuKOU+C1NML0WEfzWgb+zK15X8Bms0WdQwQHlmElHc
 RVqAdfdmlRFO/fKw4tBx1ub4vX6uxA+xUYHxaCHRUB0ciav199fJkjpBWUWnL24Is+VfM39yO
 8ZLksoVXv7myE0+jvWOQu8SOgttOq3IIhkvKKbKMy+BYMxholDvrU2mJHcREJX6rmyqTnkJNA
 bleVd2TZrKe1vdQ5Fn2GY11KBDQuk11m7Rh5XBwEiuRLR9F8NPKI/AO22lIWN/uztY0k4Yh0a
 pyRe2mlRA0uf12veCsm13RLq9N3a6yNrQB9pqMgT69V/4tz3nk/5aUks6emScUm/tQ6Dht7Gs
 92oqc7XZ3IdDob9tI3efHB0zMi1nZw8wSdGJ6W98oediYjCLDC95VZHsBsBfANWs4B5N8pNgD
 AoBzeZxfW31qfUoIw2pAMr+MBvUQjxHrsVRojpoLdIAz8R6oq2tr97iuvGle7pCLcxWX48YjR
 Qp9Y5AjMXnCV72T8aSHIzFQ84Q1GSmNQi3+qJ9a1ZjIR/sKX3Ysf4h2IZNVKKOP8npu8pyF0v
 fwSZUmh4927a1PoqjOqBBMOm+fjsnai7p5w67mgKAPnPy8dQKr0tFyKbO7otJQu8I6b15q40c
 qVoYK4/Djvb++H1+RyQAIPVFK1nLupoRgNIacw9cIcaP1OI1RArZP5NPmny1e9nPS7XePcgWf
 Oyng0c6Mp5ff7bSK5ywO2tn//P133aeIP01dXNYxGit9t+OIoXU3EpBHzkH6YWtqDPVHWOKim
 b+Ovc/IWgY9aGpy9OMUA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Many consumer "routers" have dedicated LEDs for specific WiFi bands,
e.g. one for 2.4 GHz and one for 5 GHz. These LEDs specifically
indicate the state of the relevant band, so the latter should be
included in the function name. LED_FUNCTION_WLAN will remain for
general cases or when the LED is used for more than one band.

This essentially equivalent to how we use LED_FUNCTION_LAN and
LED_FUNCTION_WAN instead of just having LED_FUNCTION_ETHERNET.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 include/dt-bindings/leds/common.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/leds/common.h
index 52b619d44ba2..52db8a9032d0 100644
--- a/include/dt-bindings/leds/common.h
+++ b/include/dt-bindings/leds/common.h
@@ -89,6 +89,8 @@
 #define LED_FUNCTION_USB "usb"
 #define LED_FUNCTION_WAN "wan"
 #define LED_FUNCTION_WLAN "wlan"
+#define LED_FUNCTUON_WLAN2G "wlan2g"
+#define LED_FUNCTUON_WLAN5G "wlan5g"
 #define LED_FUNCTION_WPS "wps"
 
 #endif /* __DT_BINDINGS_LEDS_H */
-- 
2.20.1

