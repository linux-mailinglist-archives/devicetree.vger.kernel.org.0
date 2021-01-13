Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 436812F50CE
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 18:17:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728018AbhAMRQB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 12:16:01 -0500
Received: from mout.gmx.net ([212.227.15.19]:58143 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727927AbhAMRQB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 12:16:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1610558019;
        bh=t6SYupRmaiEP0O0gUMjSPYZ4BdkGnTgMi3vaWmzYRDU=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=FpVJF1ZYYwbGNL1QD/juV99kCjiHH2nQr0YgyA1Xocx2rB9tnAr3iUI7ZxbIKJZuj
         cg6ycWYNHhPpvfIRSrBDXZWHgBSTWUNqN4KHj47KJOoy7ihKMoi6hb/HHOwHZ/hk23
         yE3pQqEECwOHZpbxE4BeN6Q+bUXJHwTeYeXhyyoY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.70] ([62.143.246.89]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M2O2W-1kvsdA3ntG-003vj3; Wed, 13
 Jan 2021 18:13:38 +0100
Subject: Re: [PATCH v2 3/8] arm64: dts: allwinner: Pine64-LTS: Add status LED
To:     Andre Przywara <andre.przywara@arm.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        Emmanuel Vadot <manu@bidouilliste.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
References: <20210113152630.28810-1-andre.przywara@arm.com>
 <20210113152630.28810-4-andre.przywara@arm.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <1fd16d42-d15c-ad45-b23c-34dbc23de51d@gmx.de>
Date:   Wed, 13 Jan 2021 18:13:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210113152630.28810-4-andre.przywara@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:ST7qYwsZB6IelbWdGAVdtMhQV0eSj/1l5MozqzHLaEFkKdOeNze
 ib8DWBAZgCcxSorQ6/twImxX5LNYIa0DpQ9+zaEujTeL0YKe6UFadkHzUimaNuMFvzxEKvA
 QCt3uP6c8STiHZdK8a6Q//xz9H4pOqzmCej9o0/6RxA6Nn3Wlml6xxWEgsEJYIq5A8VIU3R
 5T9+r+z1naBmg1naeakNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wxV3sRKCwsg=:wCZU7MDJYP/TllqPJji729
 czN7mU1QEWbEMUQRaeggSVxMlO8BO6Jq57rcKV7HlpdSSKA4GZMvjsDtFuc2fpLZ10xg0JZbN
 tCASua0WpfRmh9flB1RXHxgakgp2OTjjZEGki0N0hA4AJ4UZOa2dzv0Kt2PQAU1R+y6BpagzE
 hvhg6HdoL1YZbSrabkPjJ3lum8krFzy0dfJCs769ZVhQI34m/vi1Ww+1W7k3c1cwihhkdd5VR
 wFUVyUHKkksVVz5bEaxFyg6tuhOuths3MZqv45skTEIWSq0xMnQojhCRtzuaNf5htjgcMEOB1
 l68KzoIBNCfW6dWHtWttD+HCkLAtAjcmTQ3x98b1G3rn7VVfdhnMkfwdrGGrYD2DZip6DA4V1
 d7Z+Iscz0dJM6PwwAmnd+Qsa2lWGjA5ZzObr9+XPWuw4fSfHz67rRTMNnkcw7bbLMZPjte24W
 JUeqJ8U2ckU5KsOLLtkDi3l4BpGPoZFSr/8m94lpXPIeccLDD1MKGqBIVo6i2JUCuTeMFTx5z
 QkXaqaSTwRer1OS+FaMe3AGAfGPSJPLnYXBX4/8u3OYaA3gxVJfrz1nTNwnqPCRuWUDtv0pTO
 AaG0bZD7bY2Bv1WSgxj6k2M+bOlTeCbpuRozAVu0pLRc0WWd4EBtpHjHQ30hehOaF9HcPjxNB
 sROp/25DgIL56wPkwet4LRJJfJCQo8oKT5u15pWKgSA7hJClSghzeVyqytwbTCVT1VC8X9Krq
 l3FCpU0MDkwNHQjnJ4xOO2qQ5MyQd4WQJ3nixHaQWcdlm/d8k3k0I+z4z9QBzfwjSTuXlgcE0
 BZ6KSRp6Z4NGFP3cruUJQ0wwG9cknvS21GIhOehPDpCUQ8vEFZ4Fj0oEXrDl0tvQ7FDLptL2H
 CulSvkCd4AcXZTZSqn7g==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13.01.21 16:26, Andre Przywara wrote:
> The Pine64-LTS board features a blue status LED on pin PL7.
>
> Describe it in the DT.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Tested-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
