Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B63F1C60D8
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2020 21:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727785AbgEETL1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 May 2020 15:11:27 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:32847 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726350AbgEETL0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 May 2020 15:11:26 -0400
Received: by mail-ot1-f68.google.com with SMTP id j26so2689020ots.0
        for <devicetree@vger.kernel.org>; Tue, 05 May 2020 12:11:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hfQqQqUDeux0AiumwR3OcP5mXbRrbF31YObLFLL2oyY=;
        b=jr7VnCDow35xT/9+VBEHdHU7OvFVfFVnNfEiQSWsQGvTdaBc+KkVnS6rhUYEFIPtwj
         CshTtnZWahC5YjMUDQBNtdZskf63gJEBPEbB67QAotIpSXv3dlmsUgcgIRuqpEmt0jvt
         DT+Upe1Vfm+zvvnu3rzOWLXrJJEaHr/I5nr8KBo1m/tk2oYCZlDnPfPciMCHxH6P4dxW
         E8RAs87mzyBdJBUAZ08R4b1KRjj+dyVQu+qjvBFI1Z9jYG8AiJKlAM5oTM9DEFvny7vI
         lYr8y7dE91BbWYW1Z3Tc940iSSLFKIks/I795JrbushF5r09SfPqADqB0m9qiXzZib78
         tMqQ==
X-Gm-Message-State: AGi0PuYMMu6B6ozIZrb83x3aBpdu2bKlyAKiJlmXfuFy1Y0Pr9uS9tM4
        jemAzeK8/CzCH+hYKLqzzA==
X-Google-Smtp-Source: APiQypKJXcHVrs8bPzFJ0U3Kl3JJt27BxV3pPbawiypoA12wYwIcXNCz2Df0a58Hr8Igs3g7jFmYbA==
X-Received: by 2002:a9d:1441:: with SMTP id h59mr3794216oth.192.1588705885678;
        Tue, 05 May 2020 12:11:25 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t9sm787281oie.24.2020.05.05.12.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 12:11:25 -0700 (PDT)
Received: (nullmailer pid 26249 invoked by uid 1000);
        Tue, 05 May 2020 19:11:24 -0000
Date:   Tue, 5 May 2020 14:11:24 -0500
From:   Rob Herring <robh@kernel.org>
To:     Masami Hiramatsu <masami.hiramatsu@linaro.org>
Cc:     Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: Add Akebi96 board support
Message-ID: <20200505191124.GA26192@bogus>
References: <158824887998.2799.1402930732677315138.stgit@localhost>
 <20200430222509.c0c3699e42b3e2e3c290ceae@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200430222509.c0c3699e42b3e2e3c290ceae@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Apr 2020 22:25:09 +0900, Masami Hiramatsu wrote:
> Add uniphier-ld20-akebi96 compatible string for
> Akebi96 board support.
> 
> Signed-off-by: Masami Hiramatsu <masami.hiramatsu@linaro.org>
> ---
>  .../bindings/arm/socionext/uniphier.yaml           |    1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
