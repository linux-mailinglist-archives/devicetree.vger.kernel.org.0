Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 38A9E2CCD6
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2019 19:01:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726600AbfE1RBu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 13:01:50 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:39378 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726236AbfE1RBu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 13:01:50 -0400
Received: by mail-ot1-f67.google.com with SMTP id r7so18446001otn.6
        for <devicetree@vger.kernel.org>; Tue, 28 May 2019 10:01:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iXaT/662lKTTFQBCDcS2ZEat9fIaR7M4GYugaqB1Wkg=;
        b=lDmleI+b1UyBzsslpJy5lhChbKSaa63UAgizRWyIy4fVRC6wSP+8Ret2GDRw4XGPEj
         BI2hEu6tiyEm6C8vbnua1uMHRr34Ox5M9wjanzgvkY/b60Oa08YbugUBO16xHz+LmzDq
         pnKojwLT8954Zn2MCoISFwPcCcOiWEDNT4dHnxNwRKfcAeB7lwc585rUPGR2LOT7q2jG
         LwuNd6V2rGNTQ5inkgtq5RMo2/S645USR0jX2G24Vo13IRy0eqM4DuJ9DkwiP4RzbxCc
         ypafrCZe0FWqFcUN6i4lvktlPV3fD8xC5C71ASm8/FR1zGyn9VghpUNnsN51/vSJgQ13
         QnsA==
X-Gm-Message-State: APjAAAXzsLvdUDqndfIE7hcgxIlLqzNWm2BgrccHlBWi+IOtbDa36hi9
        BqHouY+cwj3D/rOXUI5GkXjzAs7bI6DkiE43q6o=
X-Google-Smtp-Source: APXvYqzmGWU8ZNTdJwZ7u85ckVkZqsIKCQQEp9F5em1sf5denOzFAP+GNJ41Bi9X/+eSkm14ZNv7TMXictQhTW/dCBc=
X-Received: by 2002:a9d:7dd5:: with SMTP id k21mr49049157otn.167.1559062909795;
 Tue, 28 May 2019 10:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190528154312.14435-1-ckeepax@opensource.cirrus.com>
In-Reply-To: <20190528154312.14435-1-ckeepax@opensource.cirrus.com>
From:   "Rafael J. Wysocki" <rafael@kernel.org>
Date:   Tue, 28 May 2019 19:01:38 +0200
Message-ID: <CAJZ5v0h28OAiT7KP=TLu069hNvYjCLoFndS+zx7_iE+jKfOF2w@mail.gmail.com>
Subject: Re: [PATCH 1/6] device property: Add new array helper
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lee Jones <lee.jones@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." 
        <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        patches@opensource.cirrus.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 28, 2019 at 5:43 PM Charles Keepax
<ckeepax@opensource.cirrus.com> wrote:
>
> It is fairly common to want to read an integer array property
> that is composed of an unknown number of fixed size integer
> groups. For example, say each group consists of three values
> which correspond to the settings for one input on the device
> and the driver supports several chips with different numbers
> of inputs.
>
> Add a new helper function to provide this functionality, it
> differs for the existing helpers in that it allows reading a
> smaller number of values than the full array size and checks
> that the number of values read is a multiple of the group size.

As a rule, you need also CC all of the device property framework
changes to linux-acpi@vger.kernel.org, so please resend the series
with that taken into account.

Thanks!
