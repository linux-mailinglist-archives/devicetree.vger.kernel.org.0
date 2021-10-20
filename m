Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8568343509B
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 18:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230330AbhJTQwJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 12:52:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230299AbhJTQwJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Oct 2021 12:52:09 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35278C06174E
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 09:49:54 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id i24so16218010lfj.13
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 09:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IOdWtSL7/26YG/E7X5+U7QmZ/wOmRVmoFWssnqUWGa4=;
        b=j1GayWZ93xM5QWyR/JLKgf4xz7GB17Q6Gu8fl9WkGpkjjaReEZzAtdD3Qz9Fec5bF+
         P9AhtNx9psecdAq+VTHHIIUpouXGQ1ju65OQ5jDJ/WBqBFsbykwWFUA0PMQfKAbfKWO6
         gzlPQI1j3F3qhgQi42w+k2AoGY5e/tb7FN4EuRd92OjhLuIaKk5EypuGXxownY1uVOyl
         D2BwFsTFG6zsgkqGh4a3Vmbs6uH4tn42sZL10judaFu0mb1j1v/NrKkLoXsxQFG090Cy
         7NZs8Qf3stKa1SGFUtsHSb/8oLMIzeIuCViofVVRPXA89iNHUHITjjwNPLf6+RcU6xfd
         tPWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IOdWtSL7/26YG/E7X5+U7QmZ/wOmRVmoFWssnqUWGa4=;
        b=TxapCTwuvgNzM2CaJEigV8gbgxi4hK2+Hdxv4p53kb14jGBEGXA++3urLt+y61NI/e
         FfpxsvWWE4dQ+KOe1CYicalWDA2v0ixEdqTeRgwThtO/59zEppB4U7gd9BPALMdonAS/
         oBfG0Sx7yUXeuSa5BBCMTehn2r30qB+E3g8RfO5g9MSGkFrATiq1BUIxgUKSgjlv1dLX
         lBZL/E2B7Shpu7Y4jP/3QivMgeX7kZhrRHJCmp1pN458LYgTo91AYlsR6Pm2XhBRPYJK
         NIF1mzRJK5L0ZVDh/tXDU+lCmQ7yG1KEH2f+eH+ty3ciQ6gqPu8xw4MEhW6qsNf3NWN4
         GWoA==
X-Gm-Message-State: AOAM5328l2Ms3zZybsNKTg3lplslbmoY+EPF5RplA1udkCQ9s4as5cz1
        O12gUm/iECNc+Y7Ii3ms/ZT9M8bItn3UCs7d10PHxQ==
X-Google-Smtp-Source: ABdhPJx5BWtVC4EkQcBZclMK3+NammoVJz1rJxchsvvww/JtbQZtriy3kjoebjiJcrtsHGq/OTcswKQNxY9GneGCEgM=
X-Received: by 2002:a05:6512:404:: with SMTP id u4mr381580lfk.21.1634748592290;
 Wed, 20 Oct 2021 09:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <20211011012212.91357-1-osk@google.com> <YW2l5yTj2Adc+Kjz@robh.at.kernel.org>
In-Reply-To: <YW2l5yTj2Adc+Kjz@robh.at.kernel.org>
From:   Oskar Senft <osk@google.com>
Date:   Wed, 20 Oct 2021 12:49:36 -0400
Message-ID: <CABoTLcTgbSKVH5+RoBsUdTUMbm59ePCbHbuJiFDQ17yvU1azrw@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: hwmon: Add nct7802 bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob

Thanks for the review comments!

> > +patternProperties:
> > +  "^channel@[0-3]$":
> > +    type: object
>
> I would move the 'additionalProperties' here. I think that's a bit
> easier to read.

Following the same thought, I also moved the 'additionalProperties' on
the top level up to above its 'properties'.

> blank line

Thanks, I added the missing blank lines. I'm not sure what I was thinking.

> > +            channel@0 { /* LTD */
> > +              reg = <0>;
> > +              status = "okay";
>
> Don't show status in examples.

Oh yes, you mentioned that before, I'm sorry. They're removed now.

I sent a PATCH v8 with the changes.

Oskar.
