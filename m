Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2698EDED28
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2019 15:12:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727256AbfJUNMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Oct 2019 09:12:55 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:35552 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727985AbfJUNMz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Oct 2019 09:12:55 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: eballetbo)
        with ESMTPSA id 65F8728A8BD
Subject: Re: [alsa-devel] [PATCH v5 1/4] ASoC: cros_ec_codec: support WoV
To:     Mark Brown <broonie@kernel.org>
Cc:     Tzung-Bi Shih <tzungbi@google.com>, gwendal@google.com,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        cychiang@google.com, drinkcat@google.com, robh+dt@kernel.org,
        bleung@google.com, dgreid@google.com
References: <20191019070254.23870-1-tzungbi@google.com>
 <20191019143504.1.I5388b69a7a9c551078fed216a77440cee6dedf49@changeid>
 <659a3d1f-a8e1-268d-5e95-b328aeed601b@collabora.com>
 <20191021114303.GC4691@sirena.co.uk>
From:   Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <a4e1530a-b706-2a73-e0b3-ad56cf9085bc@collabora.com>
Date:   Mon, 21 Oct 2019 15:12:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191021114303.GC4691@sirena.co.uk>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 21/10/19 13:43, Mark Brown wrote:
> On Mon, Oct 21, 2019 at 01:26:04PM +0200, Enric Balletbo i Serra wrote:
> 
>> Mark, once applied, could we get an immutable branch from you containing the
>> following already applied patches + this series? We need as we have patches that
>> could conflict on platform/chrome.
> 
> Ugh.  You should have mentioned this before the patches were applied,
> they're on the development branch that has everything in it like I
> normally do which I don't want to rebase (and I think I did a merge up
> of the fixes branch since then anyway).  Hopefully Linus will be able to
> figure out any conflicts that occur.
> 

Ok, I was off the latest two weeks so I didn't catch it :-(. I'll try to figure
out the better way to avoid conflicts knowing that these are already queued.

Thanks,
 Enric.

