Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93AEE2A2BF0
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 14:48:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725925AbgKBNs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 08:48:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725895AbgKBNsZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 08:48:25 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 723CBC0617A6
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 05:48:25 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id v5so9449379wmh.1
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 05:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=UFRhiWlZ0PmDQf5vXKHCYQqY9H8uzxB92d/n5pWqdLA=;
        b=IGXlcw/FXocL1GYrDQgAAbLPC9DB70ce4/7VYcbIsVF0i9rXqooRJVzVPEMN2MNyTW
         vZ7+5JdpyDY/6L7D88JWUe4StIkmdHdVdiPqxUv9U8fkUeNVOK3mLZ5uO7Ulm1Ng43NF
         vnuQjvRGj3fe0TJviSqkXtQMd1/8c3fwyKIKWbZdPJ0PMJ3Tm4iJ2ut5UUwNNZevLsYI
         Nwvtf9l6Iz9+FHUgwWrtdj0mMhCP9foV67J1BQfvQFdSStWmt/EbDfHCAF+V68HgW11E
         KMIyO6xkaiZw2GvONSIukw9jzCA4nqzpC9ZjNX+5dUEt/GLf1IbR4AGcW0kqbXDBfe2J
         u6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UFRhiWlZ0PmDQf5vXKHCYQqY9H8uzxB92d/n5pWqdLA=;
        b=ftjmORG/oVnuk7j+DokGjezTfybwMFHRXlWAklxKHNDqAub0fl0f55YG8Oy3XPji1r
         PmcgtugHOsEagnUJCxFlDIUgk1a/KYP1YiyMxCTxx0veiOjYRbsOiU7H7zoN47ArgJ7R
         ORg8GAFI1BtR86HgBRMznXpHu4gZ2Ohhz7eneFGj67Btf7qxdUFVtQev6NLkKy12Hr7w
         RicAQ2Fg/CbDiIkmrPpQ0AkQNdkvvMZiApw7Yzw/fz6vAu9XO60JHZ4ltZf/TWTJRyF+
         wp4CygBJh6vIcBaSCOXZpXNRVtSqo1ml3h7mbmUjhrMBfAYU9NoubtlMUxl2RvnZ8Vp4
         Ciaw==
X-Gm-Message-State: AOAM533vhCoZleANDWNIahPpbYos/9JpO40yrQDi7NBHPRWGg0s+nbS/
        mfidqR9HfvaN6JL1sc0wLyxkDg==
X-Google-Smtp-Source: ABdhPJyUhiWVTvkM08d0dh3jqSehjke4YSRXKwFK5RUJyJHB/R9+titxNviK2sWz6ca1mjON+wvXwQ==
X-Received: by 2002:a1c:309:: with SMTP id 9mr9312082wmd.80.1604324904060;
        Mon, 02 Nov 2020 05:48:24 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id h4sm22234799wrp.52.2020.11.02.05.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2020 05:48:23 -0800 (PST)
Date:   Mon, 2 Nov 2020 13:48:20 +0000
From:   Quentin Perret <qperret@google.com>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        amitk@kernel.org, corbet@lwn.net, daniel.lezcano@linaro.org,
        Dietmar.Eggemann@arm.com, morten.rasmussen@arm.com,
        dianders@chromium.org, mka@chromium.org, rnayak@codeaurora.org,
        rafael@kernel.org, sudeep.holla@arm.com, viresh.kumar@linaro.org,
        sboyd@kernel.org, nm@ti.com
Subject: Re: [PATCH v3 3/4] PM / EM: update the comments related to power
 scale
Message-ID: <20201102134820.GC2221764@google.com>
References: <20201019140601.3047-1-lukasz.luba@arm.com>
 <20201019140601.3047-4-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019140601.3047-4-lukasz.luba@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 19 Oct 2020 at 15:06:00 (+0100), Lukasz Luba wrote:
> The Energy Model supports power values expressed in milli-Watts or in an
> 'abstract scale'. Update the related comments is the code to reflect that
> state.

Reviewed-by: Quentin Perret <qperret@google.com>

> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Thanks,
Quentin
