Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 717CA1D59F5
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 21:25:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726198AbgEOTZj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 15:25:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726144AbgEOTZj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 May 2020 15:25:39 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C2A2C061A0C
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 12:25:39 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id g9so3130991edr.8
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 12:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YAXpgOVMdF0xIsyyG8nqzmy+2jkhZHseFImEJqFzjok=;
        b=sBXTwQRHDH2oC7dIASRpdcbOnmN3MLt39+cHY0eY/Xaj6QLnExT7ESBWqXV1kC0pii
         gARVWUJRYFZ5wYEHpIXKEThTTZozJu1pG/ZAgjKngsWOfkkeIIfJMPNgHq8cB31G9rCF
         EWZf2B2xRrd2MB1oSPAbIsVQzXdBo+dPrFZfUd+5+6Q20tLbTxrPQ0YwWIprcEaaY2Xs
         4zCVR1yY6YZ125aj3Gtrz/veFmGGqlBPNxkmi2iagZpS5QrQx0fyLj6MqjMB2GIm3g5U
         MzaQEMDt1GxvQ62uKDhe+oiGssgwVxm65/d9KXtTTd/IvTZPsqMnhKkquOw29wSepRqQ
         oyAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YAXpgOVMdF0xIsyyG8nqzmy+2jkhZHseFImEJqFzjok=;
        b=hMcYtjvi9vzeTQznQyaUOVcm+6ObjrqH8yhxBENmAgnUI7dJiYKbNJQiSGSe16uDvx
         9FZsJ7HCrTyrkwETIfj6nPxFy1FcaQNMTsG7JP28MiFW5y7++m4t0AZ+kWjkpXmi7Pen
         HHTNSB1J3+RgD+GRkpE1Sw/P3j82xtkW7rDrNP77mylGyYforlOuMKNv6Yi47rqmk/Hw
         Dph1JI/MGoDLJGykXkkriji1QlW0GAbkCKS44mHIjkpvfvJ46OYFKYGnOjXAjNQYwfSV
         DIYUDynVrjMxVIrN0mhj3gwNNjbIeMDa5plExkk9LGER8X33y4iEv9tjQ9iyN/A11xaj
         pzRg==
X-Gm-Message-State: AOAM531FysDCQ1W7eS3996uUD6Cnx+6fMT5I3Fo+3cW4RjbhG3Au1I3U
        9LDD8LrC4K2o5hUozffZStJOQlFTR9Dc+sNCzzE=
X-Google-Smtp-Source: ABdhPJyFnYDSpHOnZoe1zHR66mKvtPX7D+1uFRZv1lE9xRLxamE3ZRvhw69XYnhmcT8kh8UP6U570Tp55w7116EVIig=
X-Received: by 2002:a50:a7e3:: with SMTP id i90mr4545436edc.6.1589570736840;
 Fri, 15 May 2020 12:25:36 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-6-git-send-email-amittomer25@gmail.com> <afc0d7f3-d763-b936-988c-d802b86836bc@arm.com>
 <CABHD4K_BpHMSypfdiQKeRfHOgdO8e7ekU0TKBmqisDe_+4hGPg@mail.gmail.com>
In-Reply-To: <CABHD4K_BpHMSypfdiQKeRfHOgdO8e7ekU0TKBmqisDe_+4hGPg@mail.gmail.com>
From:   Amit Tomer <amittomer25@gmail.com>
Date:   Sat, 16 May 2020 00:54:59 +0530
Message-ID: <CABHD4K8Lp_wHKsgRUxPq9hd5wMoUJBQPbQCa84fQicbYBYw_jQ@mail.gmail.com>
Subject: Re: [PATCH v1 5/9] dt-bindings: dmaengine: convert Actions Semi Owl
 SoCs bindings to yaml
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, cristian.ciocaltea@gmail.com,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> But having it under reg: looks bit odd to me, no?
>
> reg:
>    - description: ...
>
> Or did you mean something else ?

Ah, I see you wanted to have description for individual items, for instance one
for reg, one for interrupts and clock etc..

Thanks
Amit
