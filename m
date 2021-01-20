Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D82C2FD064
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 13:58:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731094AbhATMin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 07:38:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389474AbhATL2l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 06:28:41 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8999DC061799
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 03:28:01 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id w18so3025864pfu.9
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 03:28:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5C36+KK+ZwCozfA+Xk85YVuDANWbjdMSTMpiHoCogIk=;
        b=j0DePEWGVCVzKBL4UrRlIOqRfAi3e9/BYBY2rp+YfO71dbsU++ZV8kzv92wNdxhy8N
         LGHCDsCdCgiJ78KW3uHIY0sRNaawouN/5w9LPooZzR47PIVvmDpi2/raI+DSgko1hkn9
         vSLU4OoDkrWGqew17OUS3C+H/0Sj5dt6jnatPrdBf5KsZ3yz9oDWEW0g+pEJ0qNUHQx+
         0QEdEtLQVz6ObugsK1wyivKf0rorW1erdFg+O1ihtwhF+JQ0BlijErVfjghuhSa94k8v
         4+4pWtgLXaFwdtZld6HG/1/bHM4JB6/8EYgMUyryTBC3sI1UoROZDpbnF4s8EG39CkT8
         pmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5C36+KK+ZwCozfA+Xk85YVuDANWbjdMSTMpiHoCogIk=;
        b=MU5L1OnivNTP9tvb4XK29F2Bro0xqJNPmQWdZRvYllC3NJBCqSS8DomR12lXL4upTZ
         YkLNAk91kXJGN+8xIHn610IiDTks4wGBAjD5EZ9zQKbfbWKPtacmR6vfi1FYtOQCuxov
         NrnsZuKDKiXFlayu3/tTjt5SnUYkje+0GcRmD3uUbuFzvTAPtcnw8U2CLG6MzjXFqxfU
         /uI+4xwK8dWlf5PF6bByL2HVzhlwfyrfT/PbLeQKmu1hHIRGaYt7eoU075hoPpftz04g
         kQ0iIA0sfkRQBoRHcoxI4xCDUs9NWayeCFKezTZijBAJoWuIZlUpFsO482QLjpWBE7Y7
         uFqg==
X-Gm-Message-State: AOAM532uhaNfhua7rbpjTG3QEJLZq6ejYHYZM5tWcoGwu9jubEX/QS7a
        7yj/uYH2oVLv8yhFhZCPawVJqQ==
X-Google-Smtp-Source: ABdhPJxGtnsepugPmla4bIMZB+HVrt5zcDr9LletZEnWsvOok/MuMx9loQRr79dWZoW3iBHUsmyghQ==
X-Received: by 2002:a62:61c2:0:b029:1b9:19f5:dcfc with SMTP id v185-20020a6261c20000b02901b919f5dcfcmr8637320pfb.27.1611142081056;
        Wed, 20 Jan 2021 03:28:01 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id b185sm1995541pfa.112.2021.01.20.03.27.59
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 03:28:00 -0800 (PST)
Date:   Wed, 20 Jan 2021 16:57:58 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Masahiro Yamada <masahiroy@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        Bill Mills <bill.mills@linaro.org>,
        Anmar Oueja <anmar.oueja@linaro.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Subject: Re: [PATCH V5 4/5] kbuild: Add support to build overlays (%.dtbo)
Message-ID: <20210120112758.xpcgqsuo5j2d3bbo@vireshk-i7>
References: <cover.1611124778.git.viresh.kumar@linaro.org>
 <6e57e9c84429416c628f1f4235c42a5809747c4c.1611124778.git.viresh.kumar@linaro.org>
 <CAK7LNATPSBrmSC_if+6sK0pwi1ksBZ7RXK1mndj1AGCX3gkj+g@mail.gmail.com>
 <20210120095541.f354ml4h36rfc4gx@vireshk-i7>
 <CAK7LNATL=O4p_LAhzJguUK=jo9BaU+Jisaw7ey4wNgKw08zH1A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK7LNATL=O4p_LAhzJguUK=jo9BaU+Jisaw7ey4wNgKw08zH1A@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20-01-21, 20:04, Masahiro Yamada wrote:
> The DTC rule takes one source input, and one output file.
> 
> It cannot generate .dtb and .dtbo at the same time.
> 
> That is why a grouped target does not fit here.

Okay, thanks for taking time to explain this. Will fix this in the
next version.

-- 
viresh
