Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4E3E31F791
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 11:48:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229691AbhBSKr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 05:47:58 -0500
Received: from mout.kundenserver.de ([212.227.126.130]:52821 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbhBSKr4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Feb 2021 05:47:56 -0500
Received: from [192.168.1.155] ([95.117.12.21]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MmDVA-1ldLYv3JMO-00iCM8 for <devicetree@vger.kernel.org>; Fri, 19 Feb 2021
 11:45:21 +0100
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
From:   "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Subject: what exactly is of_node_reused fiel for ?
Message-ID: <3820efa1-1c3f-172d-470b-dbddf8c05ae4@metux.net>
Date:   Fri, 19 Feb 2021 11:45:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: tl
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:dwOimYxOqJZVLptvvy5ghQsJkMULYweXK+MqO5J4dQMxFcIXYYM
 NG5NyWq/s49i7CqF4jv5Bp/ddRQDJrpf+piVECqbasR/DxTWuXgrllNlecc0gVXTsgDMjeu
 vZ3YT2528pN4kW4bOT2mCLmLMBUcwXz0M7PzVwBBhmTXRpMZwW11DGwrUuEiUYwY9pDwO7T
 F7MlMOHVTkYAj13GgA78Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HmdsXpAz9fY=:p7aQdjRB3Ra50MglCIiIE8
 ZU/QvZflInRwdT4ytvW9rhrpMopxVoWrwh772OBd0Ip5zdvu0RH2GLY5taMwoqzJan5XBzzA6
 HsjJ3PY3Y762gyBrz5nrIesA6QUfAGHlk0QtNsJwB3XPgy5GySfA+8bVx5fLvlAqhf1QTFz56
 rFdiD1s1raalrA+ccEJrGznUj1DSWSUpmaelsIyV7OLtWiZ46vrVp8SLytWe++dbXpgSzjQlo
 z6hOrrYlJWsVAHk1mcvyPbl9xX2c+uxDZ8zhxKrwvf09qm/1MZY7MN3RPZQSVCDmolUJV2sy0
 Nb66zs4f26GIkQdViYdZaRDIh32ADtMdxaekLLzGeeLPda+ckFzLdgT/F0fQG4RBpCCbHA+mO
 bhRKqgXRFrZsvB67bHHj3t3Vya9sziHVN/DAas+ScQRjHJpY6YyAZNe6B9I35
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello folks,


I wonder what's the of_node_reused field is actually for.
I've seen that some devices seem to use the same device_node than
another one (eg. some devices seem to reuse the node of their
parent), and in that case the flag is set.

The only place (I've found so far) where it's used is in
pinctrl_bind_pins() - it breaks out when this flag is set.

Still wondering what's the actual meaning behind this - is that for
preventing doing the pinctrl setup twice ?


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
