Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E74A54F086
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 23:39:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726031AbfFUVjz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 17:39:55 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:36540 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725985AbfFUVjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 17:39:54 -0400
Received: by mail-pl1-f196.google.com with SMTP id k8so3613813plt.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2019 14:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=JMoEMgrx9ABy/aeE9DljEmAzYJ+e2IWt04xwOpLWckw=;
        b=iAW0aDUcJ0jKVdqSoZM+ADII3msh5uwQR+1Wb/rOBQbCIoW7I+TEHmy7R1wsf5nrf5
         9KLaFAsd9DvnwYD/kYyjAqHLZ3cAWt6yTImzLV+bBc+oJZUHR+HHEA0wjHiJFNMwGPG/
         HbvH4Fk4EORE4Pt8EIeESxyklsFO8Pl8oKwzkUmUmMjMAY4uU6MqPDk4UMZSTPhu3/0y
         4lPPBcIOptNi+3oQWElkloY28MOcbfB8RWBzFrQ9NwLystZ+tNEwb9fKNhX/7UtfkUf0
         CSEr25T6LqV4SANHY6xyw3nRp7VrPSx86rhpX/4R7WXFrp6oI2tl6CaCsNBDle76lCvu
         Xu+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=JMoEMgrx9ABy/aeE9DljEmAzYJ+e2IWt04xwOpLWckw=;
        b=aa9glKQMSx1b40Q1jaSAdYuFknuL1G9weWBt/L/umJLXfbKOqR8O9LwKszTX7UNsV9
         oyizqWJNN/0m801ubAg3XtY2Epr1OslBxjEvWlA2guvwVr0BssfxwtDhU/CWL02sApY9
         0f/nkXN6bAm5ULN0E7PBalijSqZ32SjKQS8ZRJTPhoYfOk81NvKSyvF7DjsWn72ggq99
         spkO0rNKerB/5PTDpfyuUrTblk4qs00RSPVFBjeRddkT0Fy6/6X1hAMeZx/BiEsMzIGb
         UWL9tLG47ppIhYuqvzw8A6EdfV+EJ2xvgqnNroECMSyBXh33IYJjLOku24HQx1R3RBnR
         PdIw==
X-Gm-Message-State: APjAAAVJ76f7jC/S9VUWg/YdMp9v91vdEg2WgVwmAUlmc5j/3zit36AG
        ljYfTr/L8pBriiFe32VE6rXYGQ==
X-Google-Smtp-Source: APXvYqyblrrnBXKkDhx7UyIenPB3HwEhmGyd5F54TG0KrLjZjGruNROVTN0kh5NCGMpS/9u/4uyYgw==
X-Received: by 2002:a17:902:7891:: with SMTP id q17mr78824512pll.236.1561153194070;
        Fri, 21 Jun 2019 14:39:54 -0700 (PDT)
Received: from localhost ([38.98.37.134])
        by smtp.gmail.com with ESMTPSA id m20sm3367922pjn.16.2019.06.21.14.39.51
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 21 Jun 2019 14:39:53 -0700 (PDT)
Date:   Fri, 21 Jun 2019 14:39:42 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Rob Herring <robh+dt@kernel.org>
cc:     Palmer Dabbelt <palmer@sifive.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-riscv@lists.infradead.org, Paul Walmsley <paul@pwsan.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: riscv: convert cpu binding to
 json-schema
In-Reply-To: <CAL_JsqL1a-irBa4MaVzak5DrTjxiySuqTJSQOqwzymVa=Uz=gg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1906211438210.16518@viisi.sifive.com>
References: <20190602080126.31075-1-paul.walmsley@sifive.com> <20190602080126.31075-4-paul.walmsley@sifive.com> <CAL_JsqJd6s6ta==AoxmNXdpzWL1RytSwR2P4MOfAFSEJavbt+w@mail.gmail.com> <CAL_JsqL1a-irBa4MaVzak5DrTjxiySuqTJSQOqwzymVa=Uz=gg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 Jun 2019, Rob Herring wrote:

> On Mon, Jun 10, 2019 at 3:46 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Sun, Jun 2, 2019 at 2:01 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > >
> > > At Rob's request, we're starting to migrate our DT binding
> > > documentation to json-schema YAML format.  Start by converting our cpu
> > > binding documentation.  While doing so, document more properties and
> > > nodes.  This includes adding binding documentation support for the E51
> > > and U54 CPU cores ("harts") that are present on this SoC. 

[ ... ]

> > Reviewed-by: Rob Herring <robh@kernel.org>
> 
> You all have applied this now leaving the binding checks broken. I
> have a fix for one issue validating the schema, but there's a
> dependency on schemas/cpus.yaml which I gave feedback on.

Sorry about that, Rob - will follow up.


- Paul
