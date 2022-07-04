Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B20FB565301
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 13:06:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234176AbiGDLFh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 07:05:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234227AbiGDLFf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 07:05:35 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C23D10558
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 04:05:34 -0700 (PDT)
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 58FF340189
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 11:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1656932731;
        bh=v6zARSllsNOs+KFaVjr+6wyLnT0nyP+r1Yxx88GRTJg=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=BJlG4gdMFsrcpQkz2OchxdYD/ndkDVlBsOyDVtCQfmIUO3S7kHHF+ktF2T1IOOYtK
         sxmi3J3TPOZ8qEjqGVCZPf0RWuS0o6WyWnJpooT4AXGID30p2Iu2UjttDppjvL+hil
         eU7yP3SSvSw7gtkdZxADRD+Hd/FDeCnaHsbep5qMXahfoyE9Z53L7SOiVbiKzdNHad
         XaF9NDOSSFq5pCuXEfvpA394wmMGHYLqUsjswDHHV/J/d2mgVJnX8PCjG2lyTK0QcR
         lQCfEiPKm6J6FMdEWiLQUMWpRiDTOgMjxdvCZW9fCNC4iYKJP0YdANebfMj36WdrMM
         Fnx+QL8oPXGaA==
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-10c071638bbso339486fac.15
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 04:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v6zARSllsNOs+KFaVjr+6wyLnT0nyP+r1Yxx88GRTJg=;
        b=RvNm4c/J9mxZRC9i35dQfb45DmoUSMmUUSt+ev6TnccUwNdVbDDfFblRZvRzr8hkfE
         yTlyk94paXr/1sLAxCDkZkNRP4USFaJa4Cn/SKZNP/dB/sJcOimAQ3YWHsRw6HrprLlH
         HRGubEWK3zuNEgeHLGHRypzXE5POiXR8MHs5tVpqVZZusiC+Wfi7e2hJkOLXxPcIHMQ1
         Q3zVkh5Z1HpRfhrfpsEvz+ldiG0k4YAEU876E3YIv2YZbMbEaGJvby67zdhw79w1nOwI
         J9MbzzURIKJUcZpcmlAzGL9wkJSWI82PmEHOqvbG/YlEPTRfLLbzBZcJZbDRp/qFW44V
         APMQ==
X-Gm-Message-State: AJIora9ilz+D3zJEh38Md7B2gYOaG0raKhxrpRI6oTGgAt8G9TXVMcxL
        Joxlz+G5G/rZNAsFfRdgK8htED1GGHvZRVk4qtjUADbwnysxInb7TnMmfvou+er1h5k8MOn1My4
        KB2aWv50ogh8kUDuHzubuNod4x7aqb29AmkhJrSqDyZQOj0eOOq6UdAs=
X-Received: by 2002:a05:6870:418f:b0:10c:5d6:65c4 with SMTP id y15-20020a056870418f00b0010c05d665c4mr844383oac.179.1656932730032;
        Mon, 04 Jul 2022 04:05:30 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vGkYnO/W4/GkNO3YVf0xZj47coB1lLk5cLBKzOQH/KXhb1vFJ2aTg3jNIrW505/wR7i1FR2KJZ4553vdLTd98=
X-Received: by 2002:a05:6870:418f:b0:10c:5d6:65c4 with SMTP id
 y15-20020a056870418f00b0010c05d665c4mr844365oac.179.1656932729841; Mon, 04
 Jul 2022 04:05:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220629110626.2158127-1-isaac.true@canonical.com>
 <20220629110626.2158127-2-isaac.true@canonical.com> <20220701171829.GA1149706-robh@kernel.org>
 <0d045bb8-a519-39d4-17fa-123f90969bd9@roeck-us.net>
In-Reply-To: <0d045bb8-a519-39d4-17fa-123f90969bd9@roeck-us.net>
From:   Isaac True <isaac.true@canonical.com>
Date:   Mon, 4 Jul 2022 13:05:04 +0200
Message-ID: <CALkPoPYKNxAeP6HM1cMh1zzW6jw4fktCp42b7+79Qf8DVJis-w@mail.gmail.com>
Subject: Re: [PATCH 2/2] watchdog: gpio: add configurable minimum interval
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Rob Herring <robh@kernel.org>, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, wim@linux-watchdog.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 1 Jul 2022 at 19:48, Guenter Roeck <linux@roeck-us.net> wrote:
>
> On 7/1/22 10:18, Rob Herring wrote:
> > On Wed, Jun 29, 2022 at 01:06:26PM +0200, Isaac True wrote:
> >> Add the "min_hw_margin_ms" parameter to gpio_wdt devices, allowing a
> >> minimum interval to be specified, stopping watchdog devices from being
> >> fed too quickly if they require a certain interval between feeds.
> >
> > I assume there is some real platform with a real problem you are trying
> > to solve? Details please.
> >
>
> Agreed, this should be explained in more detail.

Yes this is a real platform using a TI TPS3850 watchdog chip. With
this chip you can configure a "window" which can detect early faults
(i.e. too frequent) in addition to the standard watchdog features. I
needed to add this minimum timeout to avoid watchdog resets in
situations such as where first U-Boot and then the Linux kernel feed
the watchdog with too short of an interval between them, or when
systemd was configured to use the watchdog device and was feeding it
too soon after taking over from the kernel.

> > Can you just hardcode some min? Maybe 10% of the max or something. Is
> > there a downside to a larger than necessary min?
> >
>
> That would result in extra overhead in the watchdog core which would not
> be required for all other hardware using this driver. I'd rather avoid that.
>

In the case of the TI TPS3850, the minimum timeout is configurable, so
I didn't want to add a hard-coded value to the driver.

> > Wouldn't be better to fix this without requiring a DT change and that
> > could work on stable kernels if needed.
> >
>
> Presumably that is some new hardware. Most of the watchdog drivers
> needing this value can derive it from the compatible property. The
> gpio watchdog driver is a bit different since it is supposed to work
> on a variety of hardware using gpio pins for watchdog control.
>

Yes this is new hardware. This use case is also not very common as
most watchdog chips don't have this window function or a minimum
interval, at least in my experience, so I did not want to make it the
default for everything.
