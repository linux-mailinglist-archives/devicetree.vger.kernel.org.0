Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 692DA1187F5
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2019 13:21:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727349AbfLJMUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Dec 2019 07:20:55 -0500
Received: from mail-ua1-f68.google.com ([209.85.222.68]:40535 "EHLO
        mail-ua1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727332AbfLJMUz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Dec 2019 07:20:55 -0500
Received: by mail-ua1-f68.google.com with SMTP id v18so2448875uaq.7
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2019 04:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+GXCkz0A083CnW2Auy3zOSjwo1M0I1o2oKHeSL9F3ck=;
        b=KyH5SEa3abXaiGToIC3ZdQDJPjQz7ehlNHa1ewyHS05ElloLcTSWUH0+HHxGSpmv35
         0zlWrNuW20o6rR7byo5kwkQGHdbqOsjtqAk71j96a9o1pdQ8ZalAOazL9CCburkIWQg3
         QHXevI2feYkETt3mDJ6WQBTmj6EZ2zjN/PiP6GJdTkujIbnhuW6Vce6LMqVPlCwGIfJt
         E8byyo1vnZ1FiSNFISAIBbopXvRnZtV3tsqzNmLNKEya3TQpuE8vYslVfw1+wssR+kLR
         KxGH+irE1aFPt39ROF9djLlen7lWYJ9nXFdNXFLZ3P2/XbWfdiiOcvpQVQe4QFLEAp4n
         WPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+GXCkz0A083CnW2Auy3zOSjwo1M0I1o2oKHeSL9F3ck=;
        b=NuepZG7jkllrnXcTMmD1CjgCYEM82jcqTyi7wSZMl/qeFQgYOLyox3gi7Lmeuq7JTK
         5bzz7CJS/pM5tCfJDjcAbD7DB4dfw6uI9tJEfX9djjcZLENcc0SSexXG041hc4AvHx3K
         sa28VKMbbycFy7sYiHMEplbEgew7EZ+11/mxPmWhxdSzc5rRiH2FLS9zaLmIE/nup6gF
         +nh48CMsfmxL9VrJrrbqXUQE6NmhFedtY/1+wagXv3m7/Rgft4+NPFD+ebzflwLrz0rX
         UPAUcAjqPxjB+aNDiwRljjIngEekoywXAh9Hh41GjdFGJ17yuI0TnMNLMSL49WJQbfRZ
         fl0Q==
X-Gm-Message-State: APjAAAW3WwH+G37J44GBCJnB4R1FJxgn6XOTxthRYgqbhOMIgHhZb0c1
        uXscpy+rksaYHFvWnGaOQ3IkqF58OUUrz2FE7ScUodoy
X-Google-Smtp-Source: APXvYqyXodp8MezisX2Ogin4ZbF5PMroS3cE2mukEBRUXULiSnp8AsW1NNU4k9XYdJLiuEsKDM0ea9YUPKV0ekMZ3NQ=
X-Received: by 2002:ab0:4ea6:: with SMTP id l38mr29080701uah.129.1575980453850;
 Tue, 10 Dec 2019 04:20:53 -0800 (PST)
MIME-Version: 1.0
References: <20191113172514.19052-1-ludovic.Barre@st.com> <CAPDyKFooSJUn6UCE6QkFmJOCovm00ehz_nAPbiNQM3AcJT_bJQ@mail.gmail.com>
 <c8311933-d129-4618-b81b-aa627b7b6de0@st.com> <e80f76d3-0414-4f65-c2eb-4b09aaba3840@st.com>
In-Reply-To: <e80f76d3-0414-4f65-c2eb-4b09aaba3840@st.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 10 Dec 2019 13:20:17 +0100
Message-ID: <CAPDyKFpkkqb3nr1wm7hjMqJCxH7QHArxSm_oWV=M55ga9+0FKw@mail.gmail.com>
Subject: Re: [Linux-stm32] [PATCH 1/1] mmc: mmci: add threaded irq to abort
 DPSM of non-functional state
To:     Ludovic BARRE <ludovic.barre@st.com>
Cc:     DTML <devicetree@vger.kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ludovic,

On Thu, 28 Nov 2019 at 15:06, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
> hi Ulf
>
> just a gentleman ping about this thread.
>
> small summarize:
> This patch return an IRQ_WAKE_THREAD only when the variant is
> busy_timeout capable and a datatimeout occurs on R1B request.
>
> So the threaded irq is called only to treat this specific error.
> Normally, there is no impact on HW flow control or for legacy variants.

Yes, this should work.

>
> In your previous message, you seem to suggest using threaded irq to
> manage HW flow control (pio mode). But Like you mention below, the mmci
> legacy could timing sensitive.
>
> For the moment, I prefer to use the threaded irq just to manage this
> error. If needed, the irq threade could be extended later.
>
> What do you think about that?

Yes, that's fine!

I have another minor comment on the code, though, but posting that separately.

[...]

Kind regards
Uffe
