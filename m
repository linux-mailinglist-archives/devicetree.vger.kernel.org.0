Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21150505D3F
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 19:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346806AbiDRRGY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 13:06:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244917AbiDRRGY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 13:06:24 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 638DE3135C
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 10:03:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 2070BB8100E
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 17:03:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E903C385A1;
        Mon, 18 Apr 2022 17:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1650301419;
        bh=U7b5emuWv09ZHp3g/xBr6t//9YFTZLkxOh4AdPkuKa0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=deqY0bi/cluPMypxFHiKN8ZlG713Q9/6PZnTXTUQ1dHf7AD5rKmK1v8KBKQrJQ5R1
         +ry6xNz/PXoXhLfwfeZEAnfVMWbEGnEu57bqNrkYotYeMksrHzyoGzc4ZoZDpXZ9AA
         L+o+lw2uAwquadm/v2yJcboWavyRqdnX7Sm482vQvhkjD674IM/6+pkaEfZQVjCRHr
         MbzuEppW6UZdzktzvzgO8fJebJ7FA2q6xRabzksxAguVe4wvpd+HuVDdPyvAE2D3yP
         Cl7wjMnbViGtle6y4J4oAS42F6ieWGp1oQDniTQcIVAMYZHq6H9qZW3UeiMzbswceQ
         79u8bce8o+32g==
Content-Type: multipart/mixed; boundary="------------PhJOuQmjjr1lJ1AjV2bKI1kZ"
Message-ID: <ff8a2ede-1489-0412-2425-3191f9fd9026@kernel.org>
Date:   Mon, 18 Apr 2022 19:03:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v18 02/10] dt-bindings: arm: mediatek: mmsys: add mt8195
 SoC binding
Content-Language: en-US
To:     Jason-JH Lin <jason-jh.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     =?UTF-8?B?UmV4LUJDIENoZW4gKOmZs+afj+i+sCk=?= 
        <Rex-BC.Chen@mediatek.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>
References: <20220412103114.19922-1-jason-jh.lin@mediatek.com>
 <20220412103114.19922-3-jason-jh.lin@mediatek.com>
 <69dd1710a7f1c1715e079ece159fc527c7fecb4c.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <69dd1710a7f1c1715e079ece159fc527c7fecb4c.camel@mediatek.com>
X-Spam-Status: No, score=-10.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a multi-part message in MIME format.
--------------PhJOuQmjjr1lJ1AjV2bKI1kZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/04/2022 05:11, Jason-JH Lin wrote:
> Hello Rob, Krzysztof,
> 
> I found the dt-binding patches in this series never appeared in
> devicetree-bindings patchwork and trigger the dt-binding check bot.
> 
> Do you know the reason for this?
> Could you help me with this and let me know what should I do to solve
> this problem?

Hi,

All your emails end up regularly in my Gmail spam folder, similarly to
emails from some other Mediatek people (e.g. Rex-BC Chen), so maybe
that's the cause?

Why they end up in spam? I don't know, but it would be nice if you could
work on this with your IT department. I know that corporate environments
are tricky to change, but there is not much else to do. Google flags
your emails always as spam.

You can see in the headers two DMARC failures:
dmarc=fail (p=QUARANTINE sp=QUARANTINE dis=QUARANTINE)
header.from=mediatek.com

Spamming 27 recipients is maybe another reason...

Best regards,
Krzysztof
--------------PhJOuQmjjr1lJ1AjV2bKI1kZ
Content-Type: text/plain; charset=UTF-8; name="mediatek-spam.txt"
Content-Disposition: attachment; filename="mediatek-spam.txt"
Content-Transfer-Encoding: base64

c210cC5tYWlsZnJvbT0iU1JTMD1TaWlCPVVXPW1lZGlhdGVrLmNvbT1qYXNvbi1qaC5saW5A
a2VybmVsLm9yZyI7CiAgICAgICBkbWFyYz1mYWlsIChwPVFVQVJBTlRJTkUgc3A9UVVBUkFO
VElORSBkaXM9UVVBUkFOVElORSkgaGVhZGVyLmZyb209bWVkaWF0ZWsuY29tClJldHVybi1Q
YXRoOiA8U1JTMD1TaWlCPVVXPW1lZGlhdGVrLmNvbT1qYXNvbi1qaC5saW5Aa2VybmVsLm9y
Zz4KUmVjZWl2ZWQ6IGZyb20gYW1zLnNvdXJjZS5rZXJuZWwub3JnIChhbXMuc291cmNlLmtl
cm5lbC5vcmcuIFsyNjA0OjEzODA6NDYwMTplMDA6OjFdKQogICAgICAgIGJ5IG14Lmdvb2ds
ZS5jb20gd2l0aCBFU01UUFMgaWQgbTItMjAwMjBhMTcwOTA2NzljMjAwYjAwNmU4ODExNDll
ODNzaTU1MTQ5NTZlam8uNjI5LjIwMjIuMDQuMTIuMDMuMzEuMzAKICAgICAgICBmb3IgPGsu
a296bG93c2tpLmsra2VybmVsQGdtYWlsLmNvbT4KICAgICAgICAodmVyc2lvbj1UTFMxXzIg
Y2lwaGVyPUVDREhFLUVDRFNBLUFFUzEyOC1HQ00tU0hBMjU2IGJpdHM9MTI4LzEyOCk7CiAg
ICAgICAgVHVlLCAxMiBBcHIgMjAyMiAwMzozMTozMCAtMDcwMCAoUERUKQpSZWNlaXZlZC1T
UEY6IHBhc3MgKGdvb2dsZS5jb206IGRvbWFpbiBvZiBzcnMwPXNpaWI9dXc9bWVkaWF0ZWsu
Y29tPWphc29uLWpoLmxpbkBrZXJuZWwub3JnIGRlc2lnbmF0ZXMgMjYwNDoxMzgwOjQ2MDE6
ZTAwOjoxIGFzIHBlcm1pdHRlZCBzZW5kZXIpIGNsaWVudC1pcD0yNjA0OjEzODA6NDYwMTpl
MDA6OjE7CkF1dGhlbnRpY2F0aW9uLVJlc3VsdHM6IG14Lmdvb2dsZS5jb207CiAgICAgICBz
cGY9cGFzcyAoZ29vZ2xlLmNvbTogZG9tYWluIG9mIHNyczA9c2lpYj11dz1tZWRpYXRlay5j
b209amFzb24tamgubGluQGtlcm5lbC5vcmcgZGVzaWduYXRlcyAyNjA0OjEzODA6NDYwMTpl
MDA6OjEgYXMgcGVybWl0dGVkIHNlbmRlcikgc210cC5tYWlsZnJvbT0iU1JTMD1TaWlCPVVX
PW1lZGlhdGVrLmNvbT1qYXNvbi1qaC5saW5Aa2VybmVsLm9yZyI7CiAgICAgICBkbWFyYz1m
YWlsIChwPVFVQVJBTlRJTkUgc3A9UVVBUkFOVElORSBkaXM9UVVBUkFOVElORSkgaGVhZGVy
LmZyb209bWVkaWF0ZWsuY29tClJlY2VpdmVkOiBmcm9tIHNtdHAua2VybmVsLm9yZyAocmVs
YXkua2VybmVsLm9yZyBbNTIuMjUuMTM5LjE0MF0pICh1c2luZyBUTFN2MS4yIHdpdGggY2lw
aGVyIEVDREhFLVJTQS1BRVMyNTYtR0NNLVNIQTM4NCAoMjU2LzI1NiBiaXRzKSkgKE5vIGNs
aWVudCBjZXJ0aWZpY2F0ZSByZXF1ZXN0ZWQpIGJ5IGFtcy5zb3VyY2Uua2VybmVsLm9yZyAo
UG9zdGZpeCkgd2l0aCBFU01UUFMgaWQgQzYzRDlCODFDQTEgZm9yIDxrLmtvemxvd3NraS5r
K2tlcm5lbEBnbWFpbC5jb20+OyBUdWUsIDEyIEFwciAyMDIyIDEwOjMxOjI5ICswMDAwIChV
VEMpClJlY2VpdmVkOiBieSBzbXRwLmtlcm5lbC5vcmcgKFBvc3RmaXgpIGlkIDhDQTlBQzM4
NUE2OyBUdWUsIDEyIEFwciAyMDIyIDEwOjMxOjI5ICswMDAwIChVVEMpCg==

--------------PhJOuQmjjr1lJ1AjV2bKI1kZ--
