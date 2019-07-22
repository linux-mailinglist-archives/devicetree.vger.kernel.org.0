Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8E21E70CDF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 00:55:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727391AbfGVWzb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 18:55:31 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:38389 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727731AbfGVWzb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 18:55:31 -0400
Received: by mail-io1-f68.google.com with SMTP id j6so2546859ioa.5
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 15:55:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lcDbjR9/DMYLn0EuflWWqOuDpW81rUd0RxybMlWu/kE=;
        b=AP4eloUs6RspKthkHGLi48c+4/6VM4VUvwx6JYJfS2yvixK210Pl7u3LEHOu4/PZvb
         lK6vE5FUl1D3FqhGYFvrGC9RXHhVtEZI0USgJU0x/ccjjRLZqH+6M7+QJDtOTOYQnTWL
         a+CXybs5xjN+L6ZJ2fNRzGkPnWXaC+yjbPijaOrFTwN5FrDMqXWSWVvQS0CueYV+vN8e
         2PGveMcZ2zuYaTmYgEnIs0kIlCv0KfqF1QwvR2LzPszshMd95hK6ivJZ0l+wxdHOsXBR
         QyjYnUJ9/f2UCfztzH2wYQ/4tDUcXWH1VoNhp6EmHSXmrp2SZEtIa811E/mHhPDB5oKk
         CsEg==
X-Gm-Message-State: APjAAAVnJlfVY/0XnY9Kd3cSyW+J1R4kGHjse2R/2J4zrcIfMNfogCnj
        LNky+HgWVet5tCOXLDRUSOwnqwA=
X-Google-Smtp-Source: APXvYqzw7K1tTJOUE5zDBQpoQGPLSv2dwD0mz08L4HpCQyq0WRbckKnNbabgi6MDcCAay4YgIYcGtw==
X-Received: by 2002:a5e:c705:: with SMTP id f5mr33812828iop.113.1563836130668;
        Mon, 22 Jul 2019 15:55:30 -0700 (PDT)
Received: from localhost ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id s24sm34728058ioc.58.2019.07.22.15.55.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 15:55:30 -0700 (PDT)
Date:   Mon, 22 Jul 2019 16:55:29 -0600
From:   Rob Herring <robh@kernel.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org, srini@kernel.org
Subject: Re: [PATCH 1/6] ASoC: dt-bindings: add dt bindings for
 WCD9340/WCD9341 audio codec
Message-ID: <20190722225529.GA2917@bogus>
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
 <20190702080920.22623-2-srinivas.kandagatla@linaro.org>
 <20190702140252.GO2793@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190702140252.GO2793@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 02, 2019 at 03:02:52PM +0100, Mark Brown wrote:
> On Tue, Jul 02, 2019 at 09:09:15AM +0100, Srinivas Kandagatla wrote:
> 
> > +- qcom,micbias1-lvl:
> > +	Usage: required
> > +	Value type: <u32>
> > +	Definition: Should be voltage in milli Volts for micbias1 output
> 
> milivolts

And a unit suffix in the property name.

> 
> > +	Supported values are in inbetween 1800mV-2850mV
> 
> in between


