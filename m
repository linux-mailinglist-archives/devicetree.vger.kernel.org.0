Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70C563C7BCE
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 04:28:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237495AbhGNCbc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jul 2021 22:31:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237375AbhGNCbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jul 2021 22:31:32 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1131C0613DD
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 19:28:41 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id p17so661728plf.12
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 19:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=q3Mse/Qf9kH6kL3f+V/QegEz6PSgmpb/uOwCZ33NNho=;
        b=aHKYrK2Cxt4RWF9gLC6HBDZEdoBg/7Fa6O0Wao7w+RGUFtK5uQwcvN82pIwLDVlNDf
         LzBQZumX2tOjCErjDVmaKsMEqm7UBoF+ymz/sc/V/dNM5BOWYV0GG8ngvsb/OFlZX4SE
         /MxCCTFkKFuOkIWLAFxVaO448KIw+tsxmLGjeTSaTbDFVr5Oqit3LL+QKcOh0vqKbhPT
         DIQ1BP1fuV/3LBAiNABT2wJScLUvH1+GVavKGTqnWAX1mwu5NeuasY8mBufXVFCZa5LT
         knWmK+ljj0vpUYdqITiFCT/RfLrGW2x0IqI8ViZ6F7VxHnWfKU663QCIQYcyscUNdJoC
         ySGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=q3Mse/Qf9kH6kL3f+V/QegEz6PSgmpb/uOwCZ33NNho=;
        b=J9Ivvh1vfql9jwPNzfS2Lo+/NowNAlJc6YC1EhKzMwly4Ha4cPsAH7nlLcuFdZKwp6
         636MmVJIRQYC7R6y6TIRSJOuQbOEAO9ON7OgxJ3ksIBjjGDsJWotuLDRMYMeLKDRt1No
         YLMNgfupdTXD8Id3v3z3lF36mCmNQavpZTq/AbF6Ap7xjvekxC2BcDXBLeMg0lcCN980
         kW7/ez0YHxAw6m0MMV8YxgUw2uDUttuLyiTBZhseE7eBcucpFUW068u87giCNofi33tb
         5FOxRHZf/D3DgWkqkDY/6oZ0ikI2JPLxlw5124uACIRg9+29JY/yD3HG+KC2otGbgmb3
         utjg==
X-Gm-Message-State: AOAM5320J84yNgjJXYAlc6Rj+78elSeoO+e7PLZ344H4TmHmYFjw6hKa
        54MmHZ/8W3QvxTvImozmVt+Uew==
X-Google-Smtp-Source: ABdhPJyt4NHsC3qOWPB9o2tHUAeBKYlYoHdwMOIAoYDCLLFljAqMtU6kHp2eOuJwsLQb9fy5g6WHxQ==
X-Received: by 2002:a17:902:8bc3:b029:124:919f:6213 with SMTP id r3-20020a1709028bc3b0290124919f6213mr5940902plo.51.1626229721486;
        Tue, 13 Jul 2021 19:28:41 -0700 (PDT)
Received: from localhost ([106.201.108.2])
        by smtp.gmail.com with ESMTPSA id q4sm501078pfn.23.2021.07.13.19.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 19:28:41 -0700 (PDT)
Date:   Wed, 14 Jul 2021 07:58:39 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Arnd Bergmann <arnd@kernel.org>
Cc:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        virtualization@lists.linux-foundation.org
Subject: Re: [PATCH 1/5] dt-bindings: virtio: mmio: Add support for device
 subnode
Message-ID: <20210714022839.izxkrezgaobmkixy@vireshk-i7>
References: <cover.1626173013.git.viresh.kumar@linaro.org>
 <aa4bf68fdd13b885a6dc1b98f88834916d51d97d.1626173013.git.viresh.kumar@linaro.org>
 <CAK8P3a2MZzTpdp8rb1rUEXpx9OChLJJX5Sq+e=hc8hs25iQMsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a2MZzTpdp8rb1rUEXpx9OChLJJX5Sq+e=hc8hs25iQMsg@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13-07-21, 14:32, Arnd Bergmann wrote:
> On Tue, Jul 13, 2021 at 12:51 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> 
> > +
> > +    virtio@3200 {
> > +        compatible = "virtio,mmio";
> > +        reg = <0x3200 0x100>;
> > +        interrupts = <43>;
> > +
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        i2c-virtio@0 {
> > +            reg = <VIRTIO_ID_I2C_ADAPTER>;
> > +        };
> > +    };
> 
> This works, but it seems oddly inconsistent with the way we do the same thing
> for PCI, USB and MMC devices that normally don't need device tree properties but
> can optionally have those.
> 
> All of the above use the "compatible" property to identify the device,
> rather than
> using the "reg" property. Neither of them is actually great here,
> since we already
> know what the device is and how to talk to it, but I'd still prefer doing this
> with
> 
>        compatible = "virtio,34";
> 
> or similar, where 34 is the numerical value of VIRTIO_ID_I2C_ADAPTER.
> This would then be required in the virtio-i2c binding.
> I think you can skip the #address-cells/#size-cells then.

That works, sure.

I think I misunderstood it when you said it earlier and thought that
you are asking to add compatible in the parent node itself and so did
it this way.

Though that may be the way we will end up doing it now :)

-- 
viresh
