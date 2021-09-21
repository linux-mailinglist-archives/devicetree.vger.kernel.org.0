Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4EDC413384
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 14:45:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232727AbhIUMrP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 08:47:15 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:46818
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230519AbhIUMrO (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Sep 2021 08:47:14 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D1DD640267
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 12:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632228344;
        bh=x+m58rfACSvR6iQfy7mRWz1qBo1Tu3pMG+mU6G2XjQQ=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=c0uzjxBjho4oJqVHsuHSrHHEDTP6VZaTmoQBor+n7TnxQIBYnFeWAFxj7fBw08kSG
         ej9JDjfqdd9bSrq0Ju9HPZU03SJsjPolt7ZnDIb4qoKnSsjj407Ym9qXovUICQwFul
         R6czjCeXaPJvjEIPArXId7kFK01m8bp8gopRoYm5TkKRXnpWET2yH6wAOFSAGvWiLf
         lfmEh3YsgEEaGJPTL3RAw+ZsnTjC/40+tSrlzfbo2+xuk9MZzUKpv77pOxHeAGycqB
         Wz3FQt35f4zAgcHN4LLsK7WTX4dRKVFFh3qzmRYw47HViwFbnu/TmU9CKhHR0QD0h/
         fOFL7FO9W5RMA==
Received: by mail-wr1-f69.google.com with SMTP id x2-20020a5d54c2000000b0015dfd2b4e34so8706429wrv.6
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 05:45:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x+m58rfACSvR6iQfy7mRWz1qBo1Tu3pMG+mU6G2XjQQ=;
        b=tqvG4TDJ5OOFULYA8NhL0OWSryqwMQ8SmBrn6non8mKedixf7JS790QNfRRP3mUc5i
         xdGXdZbgO88BLcyNKeNpAhbpXFfEyiPf0d9NKDCdj4B9eTDdhuUKQzSZKSfjSfDZgHWX
         ZbfeSz2awi0QmsK9GS4iWvqAM/fLjvSqXaIg+sMDG9fT/gpCnN+wiKY0WfUzI+ELASiZ
         H7rbr/pf0269mQUPWm3SRe/QjCqF1pdyaHyB98UkC6e7oUz3yS73vgAwNy4UMtmtBaw7
         luPEaJBdqo2e6h62e+6XMVOPgq+WtyaDRBTfjkiwq/DFP6dQYZtDvzCL11U64/9GX9UW
         oYiA==
X-Gm-Message-State: AOAM531KDyR1Y7V6zN1NhvyNeq0Z6je1cd1M6MjPeHVT8lWDtKwK+5/h
        4AfUmSPSSqQ12Y8jGx/9oNx0FcuHemcgmUmvubRZoMHNTwc8v1oesG2tQMz2bbLZX4rtaT4ct0u
        yWls34JA8lood7ecLmkewlov7Z8dtcjsHLemukF0=
X-Received: by 2002:a5d:5241:: with SMTP id k1mr3414710wrc.227.1632228344494;
        Tue, 21 Sep 2021 05:45:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxsq8DcEHNcAQrcIhXF4twIUhJPCUEGGHedfLeapLf2ovbo5mKFT3yWsUISrtvdOhTPrtjt7Q==
X-Received: by 2002:a5d:5241:: with SMTP id k1mr3414694wrc.227.1632228344328;
        Tue, 21 Sep 2021 05:45:44 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id s3sm17665260wra.72.2021.09.21.05.45.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Sep 2021 05:45:43 -0700 (PDT)
Subject: Re: [PATCH 3/6] dt-bindings: hwmon: ibm,cffps: move to trivial
 devices
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
        Jiri Kosina <trivial@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210921102832.143352-1-krzysztof.kozlowski@canonical.com>
 <20210921102832.143352-3-krzysztof.kozlowski@canonical.com>
 <20210921123025.GC1043608@roeck-us.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <68fa27ae-4704-181f-e2f6-92635865798b@canonical.com>
Date:   Tue, 21 Sep 2021 14:45:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210921123025.GC1043608@roeck-us.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2021 14:30, Guenter Roeck wrote:
> On Tue, Sep 21, 2021 at 12:28:29PM +0200, Krzysztof Kozlowski wrote:
>> The IBM Common Form Factor Power Supply Versions 1 and 2 bindings are
>> trivial, so they can be integrated into trivial devices bindings.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> 
> I won't accept any of those "move to trivial devices" patches. In many cases
> the bindings are simply incomplete. I can not and will not make that call,
> and I always did and will leave it up to driver authors to decide if they
> want to add a device to trivial devices or provide explicit bindings.
> 
> Please stop sending those patches.
> 

Back in the older times, there were no trivial-devices and checkpatch
plus maintainers required documenting compatibles, so some of such
simple bindings were created.

I understand however your point, fair enough. I'll stop sending such
patches.

Best regards,
Krzysztof
