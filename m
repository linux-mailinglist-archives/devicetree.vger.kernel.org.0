Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 837DE18026D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2020 16:51:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726480AbgCJPvs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Mar 2020 11:51:48 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:46185 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726414AbgCJPvs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Mar 2020 11:51:48 -0400
Received: by mail-oi1-f175.google.com with SMTP id a22so14272231oid.13
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2020 08:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TzI3NS1us/9nonvG5pXz3Br1CySTtDhQY55j7Q6IipQ=;
        b=mBsQ1xKQINy5A2P1Vw/LPVEj2a/HGVi3YKU2BuXz7iz+6/A9Eil5VZpaX3mlZF9AcW
         atj5utXs4c9T1S3OZJD6POMTEW7jwHwEXghN2Nl2NuSnK1Zbl2/1nALHQlEV45bcNPPZ
         1Nr0WiCF+FyXxDy16mSv9QxcDB9j05vBTWytODhswMM9R4dCmyLpc4BoMOf60TyHKJAx
         441St8WmfCXE4Jnp29UQo9gFpqMkuzMG7HdUs7jI5UEaclGhaimPK1x/Y9aPQLpR+nTx
         kivYTX3ggu/6XjGjpJ6cPuAZ0AdBJ0+mQN0m7I+Onvr83jg/yJKs/wQ08bAbDLwh12de
         uPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TzI3NS1us/9nonvG5pXz3Br1CySTtDhQY55j7Q6IipQ=;
        b=SsBJQa/fjtHRJByu6BTYzkDwHIjt2i/NwiYUFJntJ/6MdhZYIE2+TXS+kRlR6UlpbC
         AgGtLeePAAWYKjCQ3X9qtfmrEMQIpEQa3uWmaMN/lheBDAApRzBXlthkCyjepPlj7n+D
         SWy2Ab2bKgh0yu01U39oj5V+eVw6Q7wByUQsHqysNi+zoDpZ1KBbhBXSnB3lNJsShMtL
         /LqeX6oz7OqSrNHeY85mRHUWEbV9Qj9gQ+vdFIxLS1ILbmFf4+1IEZjrOgRyj3cQVYUR
         o20Q/B2m4ynsEvGbQng4/kPBq3NW/MZ313h84W3p89Wc3xPFDspaS9hElh4lVWC1DdON
         yeGQ==
X-Gm-Message-State: ANhLgQ3zk8pVmxG0KGpIAD124FQSlulxl7YRMokVD3vd50ZFvXmMa7Rx
        u3jnHRc9wegYH5vFRNnmhYM3WGHoEY38tM9pcw0TQw==
X-Google-Smtp-Source: ADFU+vto/+p/nquy8sen8kW/eAjYeNh2K6wTtdo9nvKXrCLZxqA2YN3nxqEtyQvwvv7lf4XKqCo9hac02b0WuwtUEl8=
X-Received: by 2002:aca:ab16:: with SMTP id u22mr1571231oie.133.1583855507476;
 Tue, 10 Mar 2020 08:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-2-robert.foss@linaro.org> <CAOMZO5C9Oj+SmTroE+bSsGcOPpz6se+WOqw1qJU9x6TrzbzZKw@mail.gmail.com>
In-Reply-To: <CAOMZO5C9Oj+SmTroE+bSsGcOPpz6se+WOqw1qJU9x6TrzbzZKw@mail.gmail.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 10 Mar 2020 16:51:36 +0100
Message-ID: <CAG3jFyuLMxUEr7yZAHT99JK8NoUZc-aquuMEtSBH_Vipa-_giQ@mail.gmail.com>
Subject: Re: [v1 1/3] media: dt-bindings: ov8856: Document YAML bindings
To:     Fabio Estevam <festevam@gmail.com>
Cc:     ben.kao@intel.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan.Cameron@huawei.com,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        linux-media <linux-media@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-mediatek@lists.infradead.org,
        Dongchun Zhu <dongchun.zhu@mediatek.com>,
        Tomasz Figa <tfiga@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Fabio,

Thanks for having a look at this series so quickly.

On Tue, 10 Mar 2020 at 14:57, Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Robert,
>
> On Tue, Mar 10, 2020 at 10:46 AM Robert Foss <robert.foss@linaro.org> wrote:
>
> > +    ov8856: camera-sensor@10 {
> > +        compatible = "ovti,ov8856";
> > +        reg = <0x10>;
> > +        reset-gpios = <&pio 111 GPIO_ACTIVE_HIGH>;
>
> Could you double check this is correct? Other OmniVision sensors have
> reset-gpios as active low.

I have tested this, unfortunately I don't have access to a ov8856
datasheet that includes
this level of detail. But I have tested this.

>
> I suspect that the driver has also an inverted logic, so that's why it works.

That could explain it still working. Let me have a look into the
driver and see what it does.

>
> I don't have access to the datasheet though, so I am just guessing.

Me neither unfortunately, if anyone does have a link for it, I would
very much appreciate it.
