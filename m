Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B138F3DCB92
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:19:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231527AbhHAMTd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:19:33 -0400
Received: from mail-lf1-f43.google.com ([209.85.167.43]:45964 "EHLO
        mail-lf1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHAMTc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:19:32 -0400
Received: by mail-lf1-f43.google.com with SMTP id g13so28364556lfj.12
        for <devicetree@vger.kernel.org>; Sun, 01 Aug 2021 05:19:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=jsv+XYE6iNe056BpjTVTAYrFxmzRxJE5z629nbYbMp8=;
        b=htoF/Qj7SGz/lCtGsMqYEDuqpQkYOXyB/QIuI2B/OqjR+rwBWpH9Remw7W3qA9BVee
         BQwfd2YY08x2zTMl6ZDKlSiEV1Wn+EzlylkYPaSdp+JNGg/d0KHI7TkoPyZv4xI4VQKu
         u4B/JTOnIWLpUfIBn0ryOjuANyp5tTrZu1ZA6Hl+hXeGJl0HLz4pnpyVX2GBkFP6+Dof
         7qJPwG7DsFwQlSHYKzUs17LrhiE6krAMNMLtdplB/b+7fBLxYIfNWUfutg1FIrejAfVv
         ClKI61Zx1sic8mjdOCOrSz84eaZzCGwqp3qMyaaC1hh9lkUckS/W2uhWvNAyt2MxSsta
         OrBA==
X-Gm-Message-State: AOAM533lfZtVSebmy2RY6oiCPBRgmoe6t/BwEZ8jwmQ8L30UiCTC0JI2
        vdAznq4CfUOXTtHyg0o4tP1atUdOtDjThQ==
X-Google-Smtp-Source: ABdhPJwj6cD70HARNp/yaTYNLZQdCrXZjt6sHF8rz+zsFirBIpBvV+nJGZgH7u7A6EIX35TjJC3oUQ==
X-Received: by 2002:ac2:4a78:: with SMTP id q24mr8649416lfp.207.1627820362908;
        Sun, 01 Aug 2021 05:19:22 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id j26sm663371lfh.57.2021.08.01.05.19.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 05:19:22 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id y34so28417145lfa.8
        for <devicetree@vger.kernel.org>; Sun, 01 Aug 2021 05:19:22 -0700 (PDT)
X-Received: by 2002:a05:6512:ea8:: with SMTP id bi40mr1012863lfb.303.1627820362125;
 Sun, 01 Aug 2021 05:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-47-maxime@cerno.tech>
In-Reply-To: <20210721140424.725744-47-maxime@cerno.tech>
Reply-To: wens@csie.org
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Sun, 1 Aug 2021 20:19:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v67jQR9=4Ants6NX_YU9rEq0p5zjFdX9N3nLVph5z7rJrQ@mail.gmail.com>
Message-ID: <CAGb2v67jQR9=4Ants6NX_YU9rEq0p5zjFdX9N3nLVph5z7rJrQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 46/54] ARM: dts: cubieboard4: Remove the
 dumb-vga-dac compatible
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 10:06 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The dumb-vga-dac and adi,adv7123 compatibles are not supposed to be used
> together according to the binding.
>
> Since the corpro gm7123 is a drop-in replacement for the adv7123, let's
> remove dumb-vga-dac from our compatible list.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>
