Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 77B176A6C4
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 12:51:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733164AbfGPKuk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 06:50:40 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:42534 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732524AbfGPKuh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 06:50:37 -0400
Received: by mail-wr1-f68.google.com with SMTP id x1so5398735wrr.9
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 03:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nGHdZHwOOO/T2384pEiYCjK9U0acA1Up7ymoQnE8Urk=;
        b=cP8y8jz99Gz9nRhMHIWp3tnPvoaGR2aHUluujRGjc/UHmoPzvlHWZZkT9YcFmAFqi1
         EssQrq1YHwRLYzCr/tsZ0plLTWbcsQTYmpb3zrTWqQ2pvpknCWsDme74+qRvh6zNosvL
         JGAfQEePL0/yPaeoQcFQFIEk0uH4KlZBIxtBFYJ26oU/Z+0malorsCIFbN4AEU+J0DF3
         9nnNUjifgD8e++maw7yPtAf7PhlB3fnx8hRyZRkseNTr42TO4stZDXoO8IjZMbva8g2C
         cv0Wlw4CvZ++FZewUVs7r4OTdNQiwK/VP8CQop8Ydut99FTWoH4kIBlrfU4K5otNRFQN
         NXNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nGHdZHwOOO/T2384pEiYCjK9U0acA1Up7ymoQnE8Urk=;
        b=azGrU+OmwhL+hbLqADHdR3g+NB/tzRpamHHgZbxisxYpxA90iO1lFyVgnXoL72uaoH
         +euu7Z6GsCXfEiC4T90SZWWww9wXu2v0uaTEPfNmRtEoFe8pkopMIoqh/pqj/XWCD9td
         za3yBfTV1gyr1bT5v8izBop7qcg7mDYSpa82cgZ4467he3kXoCLAXEPWiM7bMU8oJGPQ
         Nxo/WuEO0bm62KgtVyp4pPQ5H0aaybnUwfwF1w59gnCP1EXc1ykxoguo6juiqhldjwD2
         R+sHHGiiShSks3Bpj0bxJtK96ScZZgfp8CnXU4AMyZxFCwR35pyOKIpVr0NkiyWdMQzh
         AN3g==
X-Gm-Message-State: APjAAAXX3VDwijI4R8hW9ewoRw3elerX4Vj14vM+7ln+6cjP/ntjih9G
        2fC86WP4mpE4nivOd/CcDCNDBQ==
X-Google-Smtp-Source: APXvYqx1ya2YP0LeutZVoNpvYo9pNFMWGWEbyjTVlgN08/JSNnQvVJ1GmsmxFf21LN1R3KUhPwUP8w==
X-Received: by 2002:adf:eb51:: with SMTP id u17mr34484243wrn.257.1563274235060;
        Tue, 16 Jul 2019 03:50:35 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net. [86.9.19.6])
        by smtp.gmail.com with ESMTPSA id g19sm35841133wrb.52.2019.07.16.03.50.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 16 Jul 2019 03:50:34 -0700 (PDT)
Date:   Tue, 16 Jul 2019 11:50:32 +0100
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Jean-Jacques Hiblot <jjhiblot@ti.com>
Cc:     jacek.anaszewski@gmail.com, pavel@ucw.cz, robh+dt@kernel.org,
        mark.rutland@arm.com, dmurphy@ti.com, linux-leds@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] leds: Add control of the voltage/current
 regulator to the LED core
Message-ID: <20190716105032.thpcttko5do3u56n@holly.lan>
References: <20190715155657.22976-1-jjhiblot@ti.com>
 <20190715155657.22976-3-jjhiblot@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190715155657.22976-3-jjhiblot@ti.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 15, 2019 at 05:56:57PM +0200, Jean-Jacques Hiblot wrote:
> A LED is usually powered by a voltage/current regulator. Let the LED core

This is almost certainly nitpicking but since there's enough other
review comments that you will have to respin anyway ;-)

Is an LED really "usually powered by a voltage/current regulator"? Some
LEDs have a software controlled power supply but I'm not sure it is
the usual case.

Likewise its a little confusing to be talking about LEDs with an
external current regulator since, although that is possible, it is also
one the main features provided by LED driver chips.


Daniel.
