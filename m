Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52FB62F515A
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 18:47:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727883AbhAMRqJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 12:46:09 -0500
Received: from mout.gmx.net ([212.227.17.21]:56087 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727852AbhAMRqJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 12:46:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1610559817;
        bh=pm0ZlDCbrqJGH+8CaccMRwCLQ/RnLdRbfmFm3m/5WJE=;
        h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
         CC:From;
        b=jXZdKdi17y3sCLHj0XCXSUnI8nXPuvYqBaspIwTX8ilP8ADmBGNpm1XY2Gcd7oeos
         weK+IQ6K2KNUX/YRup/4DZgTb35xN3NfEqkJIdtuC7jW2Smp06EmlfGiGCbL3hl5Ad
         NhqRKlE3aqK/IQ8xpdorSmpjsxbaP8Ce6jbSPlVU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([185.75.74.15]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M8hVB-1kv3Dk26jZ-004hw7; Wed, 13
 Jan 2021 18:43:37 +0100
Date:   Wed, 13 Jan 2021 18:43:29 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <1610352714.9738.14.camel@mtksdccf07>
References: <20210109190937.42409-1-linux@fw-web.de> <630fc8584a2f426d9fce6b900a337918@mtkmbs05n1.mediatek.inc> <1610352714.9738.14.camel@mtksdccf07>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: FW: [PATCH] dts64: mt7622: fix slow sd card access
Reply-to: frank-w@public-files.de
To:     linux-mediatek@lists.infradead.org,
        SkyLake Huang <skylake.huang@mediatek.com>
CC:     devicetree@vger.kernel.org
From:   Frank Wunderlich <frank-w@public-files.de>
Message-ID: <6C2153F8-66FE-450E-BB37-DB586BD5DAB8@public-files.de>
X-Provags-ID: V03:K1:uFQg+G4o0VkLhFcHmboYbtKNG4jOhllMHcp/u4sZGpf7HwtPrn1
 XkH5+P2eopasCQnrommPVy/cMZC329qNXYN+O8k2+C9bzEMNGPgkXmIRlSccC2+sCJfWzwj
 FcnslyF6zEuMAz2KjzSNJTjgsqa/cZGWwYd0S4gf9vzTBlyACtTgbxMNsofr0B/ze7dUP85
 VeVjurkF8ePwMaxIr2A8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EP7/MuImp/I=:pr/wNbDaTuVt6lVAjG/HIp
 5FRsKrLCto7nD52RqD+3lxIRacdRcC1oETFUsfPC0e9eQzjShNqPh/OEVKwji70pU6hhsmK+i
 b6U9Nb33f1q9LjWGjxitDDK+JmzzVqC5ba6Bu2l5d6bqG8dvDz/oZD3iu8UHgI7iRO8GVxjXa
 rwFRDNjYhq3MnWYXHdzsfVRpAlmeQoCJQeCeNIB8ZKAxP3LvERzUumpL22NslB4obP6SFx2EL
 6kCxjz3l9+WmPcx6Q8Jbs/jixSu3B7UI2yJlAjg0rntJuwf2+J0a/bXCCvPRhHPkw6X13jENX
 O9VCdrmbkQR/dGFxhKschWsitlqlHkdhZcvKAlt3qw3TgNwY0Vtkf6y6HIA3pa/X+HDV+AJNz
 zQiBoriOP8+EMRIjHIXDuP+svfv+XkwFZKmb1J2WxDl3pxdcegg+WitSPEo8JjcSXDwCEMurC
 cOFfE/dmwNryI/28hyTzKasB1AtLcy/QvfEXj0h70ZvPofbaG42NG8ixCLb+rC+3zUbBmvdbj
 xSHpBDyAYyQN2luzkkwParn/m7YSMglWKeDmHhhySwpiu3jyemaI0Yk4Y/0kDTREBrXxJghat
 wpfvEny86XjCIQkj7QymuBYglA70i+nuvXntd5eEIBBRiarnoUr50chCdW27+vrkTzRxAGSwX
 Z5V/wyIKna9DU7XleJ609VxYLvnRqgxU9Komqzs9ljTNBc3DoyJCTqTnOWQxTfpjQBElglF1d
 hz9QU0a+hh9MD5hTlMObvOGlYvJhkj3IeTCcYl0MO45DbM1C5N746d0EGL9U6g1rL8TiKPA3K
 uR8FXHs1dzIrY6aHf0Sx1RzY5mMLra5vgXGfj/KhiN8JVluT+FxjM137EO8BtRM8l4cviRyZN
 6dfyOQatQtD7tPcm7rqg==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

Thanks for clarification=2E I will send out a v2
with only the reset=2E Seems this is enough=2E

Next time please send answer also to me
(not only mailinglist)=2E
regards Frank
