Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9AB258E5B9
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 09:46:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730619AbfHOHqe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 03:46:34 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:38715 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730614AbfHOHqe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 03:46:34 -0400
Received: by mail-lf1-f67.google.com with SMTP id h28so1075356lfj.5
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 00:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KvqA7IsnNASc7CJ4IW1giEyezsBAXupdGLtj7uVYzjo=;
        b=sVDXhXrw4Mg8Lz4WDAzFmuZ45tFznhV2dEah0EpU/mgvuFCNNZJ8gF3oAGHnwiC/KH
         XQyopiul1TP//82B6W+1RH4gU7cIYK9c2/2GBjbSCIwLi9c0pcyeQgSYfNVBn8siH7V3
         Z/iO5QKNgpMNJ//tZjmDHSpJ8IfF3daj+YkyW33pi8vBomTucb0aS0vkbqHqeaRPkpMD
         oODl52VETergHl5tqgx/qNYXfDntP+fOrksSkNhFreNxhgYSdpzQDLenR4hTUUTlIBvG
         aOKQurFvaPhT5g4ttSxG8sPcu9UG92/qMss9ZZVGDHDH+NvLylYJvdQi9FAfPHKzSLo5
         O2rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KvqA7IsnNASc7CJ4IW1giEyezsBAXupdGLtj7uVYzjo=;
        b=DLC6bZ7QOrWMqFQmGpyLpFfnXjfxeqqpWGsUW1vnngxmBbXMlpW8nuBe04/ZnIy7mO
         knWyXAPOpu0ftYQW+Z9QMxzGx3TCtphLNA27ZP4AYkRCgnlC0DUBhq4DbX3rvNINyewE
         1MfG3OnRf+m7hzN/YyN9RRpLI7Krq7DV20E7pU9LqPitTTtCKbUA34QWOYZASIrH23Qc
         +kWDgxJ960YfyXf9D/8yqfrG4JjblI82DUOzz3gTjbTRkR8CAp7XL7KS0wrph+pIB5VT
         4Gb6e92KBO4YgZFcyU8kk40TjZDx6PMC3tC1hXS2iSyAf71uAsbRii6xEWRKoscNvnsm
         EK+g==
X-Gm-Message-State: APjAAAVUuhQMLzVTZRlR+GZ36amxQURdC+fbxVgPzuQIdMYk3+OhGgaa
        vFK4NIBh4j9qE8+fF3X39oYNVWeo7u45zB40T20NYw==
X-Google-Smtp-Source: APXvYqzkhC2NmCMDusfDasVwyN9Dfskh9WToFmpwdWNabOnvXr7WeusCj090idUG5TCvhv0VfZX4fsMlPOQ6am60p6Q=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1546229lfq.152.1565855192086;
 Thu, 15 Aug 2019 00:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190809082947.30590-1-lokeshvutla@ti.com> <20190809082947.30590-2-lokeshvutla@ti.com>
In-Reply-To: <20190809082947.30590-2-lokeshvutla@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Aug 2019 09:46:20 +0200
Message-ID: <CACRpkdYwOaiNyZ-hhXF2Ly4-tZ67o2u+ouRmsjoXiRbY=+YXoA@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: gpio: davinci: Add new compatible for
 J721E SoCs
To:     Lokesh Vutla <lokeshvutla@ti.com>
Cc:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Keerthy <j-keerthy@ti.com>, Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 9, 2019 at 10:30 AM Lokesh Vutla <lokeshvutla@ti.com> wrote:

> J721e SoCs have same gpio IP as K2G davinci gpio. Add a new compatible to
> handle J721E SoCs.
>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Patch applied with Keerthy's review tag.

Yours,
Linus Walleij
