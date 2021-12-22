Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8F6D47D78D
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 20:17:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345149AbhLVTRj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 14:17:39 -0500
Received: from phobos.denx.de ([85.214.62.61]:45698 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1345143AbhLVTRj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Dec 2021 14:17:39 -0500
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E03D983049;
        Wed, 22 Dec 2021 20:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1640200658;
        bh=wEfdjarYrVixRNvRPuXJZ/5YTjPMrHENxldNGxFm+JU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=GzJrBRREBgJ/8m8xGayVxcZ8FxeashG4re+DLgQScsGhJrJoCc0s1PTErGuiruMle
         SzQt5yXbS6DYhZ1ZVYS+BNGXmfaeU6A2lq8SIK1MiweJQJaB7ENz2VJJHzupM4fhwx
         HsMpTWdvBBCBtH6zdxBMWihFcxTuKWU2ED09xb+MgSYOW/hyqZ8adx+z11A7jJl2MZ
         rg05+xE0klXLoU5rKBu+1tqKbPZgd4TyEuNPvuvQpqO754XJZhY+GxIHUT1rZ2Hz6I
         4IXG+9yfaqkS2TRCikbjftb0uBYYvwXwnI+zWouMzOL7RNxYlrrYny7fYaNb4ZhIhw
         Racsgc2iWjJpA==
Message-ID: <7818a1cf-50df-7ec4-4718-18cfae37e5e2@denx.de>
Date:   Wed, 22 Dec 2021 20:17:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH] dt-bindings: display: bridge: lvds-codec: Fix duplicate
 key
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        Thomas Zimmermann <tzimmermann@suse.de>
References: <20211220125147.519880-1-thierry.reding@gmail.com>
 <YcNobgVJADzY8waQ@robh.at.kernel.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YcNobgVJADzY8waQ@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/22/21 19:03, Rob Herring wrote:
> On Mon, 20 Dec 2021 13:51:47 +0100, Thierry Reding wrote:
>> From: Thierry Reding <treding@nvidia.com>
>>
>> In order to validate multiple "if" conditionals, they must be part of an
>> "allOf:" list, otherwise they will cause a failure in parsing the schema
>> because of the duplicated "if" property.
>>
>> Fixes: d7df3948eb49 ("dt-bindings: display: bridge: lvds-codec: Document pixel data sampling edge select")
>> Signed-off-by: Thierry Reding <treding@nvidia.com>
>> ---
>>   .../bindings/display/bridge/lvds-codec.yaml   | 43 ++++++++++---------
>>   1 file changed, 22 insertions(+), 21 deletions(-)
>>
> 
> I went ahead and applied to drm-misc, so linux-next is fixed.

Thank you
