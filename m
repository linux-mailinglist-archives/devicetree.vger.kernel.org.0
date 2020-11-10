Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D92C62ACE97
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 05:40:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728403AbgKJEky (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 23:40:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729454AbgKJEky (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 23:40:54 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63142C0613CF
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 20:40:54 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id i7so9085658pgh.6
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 20:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1KpuOap0N1O9A106YHIsCA4UaAoOEm+FmSS/JLfXelw=;
        b=Iboabrwt7tUHbTCrpIDIJYmDVPyoWFalt/n2Pj6LOaQhkSj4fGPbtVsbc32R3I1lnS
         F4smScSsK8VKwcOHmYgc4hGykSif2eRHpZzMFE5qyBl8uJ7Hy7RhlZXY5myqwBvwFTUi
         PPd4LhqTZvM8qg9BaNNzJbNmwiYB9dnC9fw2ojG1MIsp2BdKFc7bz+SGzPKHEMPJ5pYP
         FWUvPJq3TGqyGc5osZ6S5hMWIvnro4d2xwT0vqOUv9j6wYa1rTFrGdhi1GnYzpLjrpra
         rSOLpZtoRsiQyEm/HqObNjI5nzcU0KwT6jBCHNZ4AuzXJC2iQfqjogiBc5BYSOxeZS9J
         d8rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1KpuOap0N1O9A106YHIsCA4UaAoOEm+FmSS/JLfXelw=;
        b=Ar5+nDij8NrFK6q9EC0jySB4OQlAqZKXPJw79TBTF5qYtbNi/xhEi866oD2BIcujWX
         ly5TwOGUe7Uldg7Plyf3pEAJ3rO1ohzX2LqPbdKwhyGgAHREU2hxItHrY7WmWbDgBQem
         pM54/VgZEhDa90NJda3Ga7Bw0qmSdXi1pyDd1q/zCmM6Iing0DdayNpwg3nf13ZK2zXD
         ixyPfvAyZaAHOWKKC8monlkbEkaFEiBkN4Vsgfqg/4VSpkqFdH/dGCtJUladxHbOphT7
         Y3OzPLE2vLd+v6tNqNPf9aocR1h2YfhS6QxGYnlwlg56dSTa5gyNB7raTjc5NYdqdj8m
         fFDA==
X-Gm-Message-State: AOAM532czTXzyDsroC2tjwmlYYjbBrQm6G4QYSSyf/vMckNX936854Ud
        AurMwSjNDj96eqoUe9YUtu4=
X-Google-Smtp-Source: ABdhPJyNgwpvVAn2131+B4C5TtB9J+KF3T0YArurRX7VZX/2vcSJS7Yfg766sIfJ+DAU1RlmSbx4qg==
X-Received: by 2002:a17:90a:8c87:: with SMTP id b7mr3000083pjo.162.1604983253876;
        Mon, 09 Nov 2020 20:40:53 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
        by smtp.gmail.com with ESMTPSA id s11sm1215158pjm.4.2020.11.09.20.40.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 20:40:53 -0800 (PST)
Subject: Re: [PATCH 1/2] dt-bindings: reset: document Broadcom's PMC binding
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201109163519.32605-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <83d8e1ac-da26-62d0-c3bd-ed351d5578b7@gmail.com>
Date:   Mon, 9 Nov 2020 20:40:50 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <20201109163519.32605-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/9/2020 8:35 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Broadcom's PMC is Power Management Controller that is used for disabling
> and enabling SoC devices.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

[snip]

> +
> +  big-endian:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Flag to use for block working in big endian mode.
> +
> +  "#reset-cells":
> +    const: 2

You would need to describe what these two cells are supposed to be.
-- 
Florian
