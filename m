Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3E0F31EBB2
	for <lists+devicetree@lfdr.de>; Thu, 18 Feb 2021 16:46:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbhBRPpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Feb 2021 10:45:06 -0500
Received: from mout.kundenserver.de ([217.72.192.73]:45147 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233075AbhBRMgP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Feb 2021 07:36:15 -0500
Received: from [192.168.1.155] ([95.115.65.253]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MuluP-1m3Ih90fXX-00rq93; Thu, 18 Feb 2021 13:19:12 +0100
Subject: Re: of overlay: how to insert new nodes with references to it
From:   "Enrico Weigelt, metux IT consult" <lkml@metux.net>
To:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <9b5a8e1f-6359-7658-4851-00d77d1cb8e5@metux.net>
Message-ID: <dddc18ad-24c3-013a-800a-b93ef1d679e6@metux.net>
Date:   Thu, 18 Feb 2021 13:19:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <9b5a8e1f-6359-7658-4851-00d77d1cb8e5@metux.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: tl
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:njEP9Y5KHZEd3a3joGYTYv+kI/TM1vVwJlRu2otXvWJHCebakCM
 2bzS79nvzubTFthEkHGN+r6gZt9r56FqoO5N8KI/hOWWwlMO8vOXT8fMu1AuoDK4BBqkI+2
 BgWT5Z5GLo2Cz39XxGLfZNNmxLfnJxYS5yQlh/IRBFZu6l/my52OtyjagcvVkPm0xx/I/vi
 7f9J1z7pHdh9fcGN17NOA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dEWE6eukdEA=:vo42R/bKJjssMIE8s5lFrS
 4Pex5jHHNdLw1XX0w3wCrAP5jRS/4GVTsAYLOVDYCR+OY/5Xs2d13cxFyyJsjMwZMTcwO6fxG
 ozdGYMFDc4cNh7tUoxA33ygh39WSrL1waBZkOYj4GOaWci4WxxH8CsRhueDP8VwZeME5/HJSq
 LgBcDOLICXnyy1iWYFSXHgS+V48C2a+6krqbi9u+zolBFbwnFuPbc1McWOu6OiLz9vAb5QoFK
 XOVlHNBp8iJUlOJZ1SCxYaHCnxz7dsb1KfwXnpnNCf8USyDIPuWbTXX2skpeOBSU4FrrqOUsn
 /Wejnzs43aEunxT+dSMrmyuvWxN6TlV2bpzjywixG4+hu7mnS2nqKbg368XpeeF5jQY3aFelA
 MZqAbYSefmiBHFM9K797x33vHJUrfR+JtjtGo5qJLrjN0Z1vF7tGbSB9usP+V
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18.02.21 10:14, Enrico Weigelt, metux IT consult wrote:

Hi folks,


answering myself ;-)

> Problem: dtc adds my new 'gpio1' node to the __fixups__ list, which is
> used for resolving symbols against the live tree - obviously it can't
> exist there, since it's added by the overlay. Therefore applying the
> overlay fails:
> 
>      "OF: resolver: node label 'gpio1' not found in live devicetree
>       symbols table"
> 
> Shouldn't the symbol be added to __local_fixups__ instead of __fixups__
> ?
> How can I force dtc to do that ?

after playing around a while, found out that I need to use full path
references instead of labels or just node names, eg.

     gpios = <&{/fragment@0/__overlay__/gpio1} 0 GPIO_ACTIVE_HIGH>;


--mtx

-- 
---
Hinweis: unverschlüsselte E-Mails können leicht abgehört und manipuliert
werden ! Für eine vertrauliche Kommunikation senden Sie bitte ihren
GPG/PGP-Schlüssel zu.
---
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287
