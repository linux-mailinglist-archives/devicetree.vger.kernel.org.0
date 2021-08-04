Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9D6B3DFA16
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 05:49:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232269AbhHDDtn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 23:49:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232192AbhHDDtm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 23:49:42 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF9F5C0613D5
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 20:49:29 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id j1so1103270pjv.3
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 20:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hy1NnP0wO2zT/VrMPRCtNkUc0gMbU7esFhgTPbbumaI=;
        b=pV3LQkTEVPVFO26bH4qKathJhoDVM53Wle33GPuHirv2DuW2qDklwIScy2sYGP/qdo
         G4Fmk/hM5GcDgdrbTSDp9aukIqKPSx6ouUAghX8NOe+h5E2A7j9bPvjpV/XTqKVKj9uo
         F2fF/0YVnI2g2AAxnKAFhoz1HwI540CBzUl8YtRiX1g9l40QcPUnmzgIy+61h0NHsif7
         phCMi0sqqj3sWKI9HBhiXrkLZXiHvVq5Zp/pu4c583bc9oFKSxPmWJ3qmkxAdQ0K2Pre
         vagCPQZjsoHJUYzHOnegWEXQxrCooPRXeM0B8S1DSWq+ldZqIL/hwUbfTZBeTOeSuCZi
         MPRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hy1NnP0wO2zT/VrMPRCtNkUc0gMbU7esFhgTPbbumaI=;
        b=IGi2Lz7Zesh13+bpygGkHqix1JBFdEMDRaPC6SqbAre4GuhalBawfPbqKOxlh0N+bJ
         fexx8N4S/x2ODhIBDuDjlXhRtCJAeeUU/tm9g1Xc4ogR37Rmj7sakH2Gg53LkAsnpdya
         on0HndDohwFm0xbC0pLnm0WCATXyiWDjE80Mn4jJ33nAa63brLXKt7mnEt/HPbJiyFU2
         bPyDweVHK3GqQ9egjQbqCUTyOvn5BEQcv7HiTYx7La4bpxYcStvW8UcatsbXPYtfpyqk
         LvGKa8dr05+DnI1rA8YVXlNaiRMekeFQCEbUO5SHZMAj3LkBCEzJc7sWUJ1qaqERwlql
         t3Xg==
X-Gm-Message-State: AOAM532CcPZtANWfUQ+gz+MG4xEntBuTU/oB7/4Q/XnIhBGmGuKbHKZS
        K8P3nW0ot3lJumr1aLiUMRmhvQ==
X-Google-Smtp-Source: ABdhPJzu/UIWjSp9w8Y+KDSNX/I9Gp6Tb85pVQV1NeAG9BQWHvOy0AKG892wKsDIlxZIxK3pOYSmvQ==
X-Received: by 2002:a17:902:8ec7:b029:12c:6a1a:3e8d with SMTP id x7-20020a1709028ec7b029012c6a1a3e8dmr20768190plo.83.1628048969221;
        Tue, 03 Aug 2021 20:49:29 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id b17sm739174pgl.61.2021.08.03.20.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 20:49:28 -0700 (PDT)
Date:   Wed, 4 Aug 2021 09:19:26 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:DRM DRIVER FOR QEMU'S CIRRUS DEVICE" 
        <virtualization@lists.linux-foundation.org>,
        Arnd Bergmann <arnd@arndb.de>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH V4 3/5] dt-bindings: gpio: Add bindings for gpio-virtio
Message-ID: <20210804034926.qtagdoopeaeaskaw@vireshk-i7>
References: <cover.1627362340.git.viresh.kumar@linaro.org>
 <acf7402ef4aabc0ad6295c32846f2bef1cd9b56a.1627362340.git.viresh.kumar@linaro.org>
 <YQhKKyPmOUE8z+US@robh.at.kernel.org>
 <20210803043014.paskwghdio6azplp@vireshk-i7>
 <CAL_JsqJ6_ktTQKiy_xx9DhjQ3=imfvSZpBem5fXwVY7O49EgCw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJ6_ktTQKiy_xx9DhjQ3=imfvSZpBem5fXwVY7O49EgCw@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03-08-21, 09:47, Rob Herring wrote:
> n Mon, Aug 2, 2021 at 10:30 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > On 02-08-21, 13:40, Rob Herring wrote:
> > > Humm, how does one implement interrupts without a parent interrupt? It
> > > uses the parent virtio,mmio interrupt?
> >
> > Kind of, yeah, but not necessarily.
> >
> > The interrupt information is passed over buffers shared between host and guest.
> > Now the guest may process the buffers when it receives a notification from the
> > host, that will be at downpath of an interrupt for virtio,mmio. Or the guest may
> > poll on the virtqueue and process any buffers as soon as they are made
> > available, no interrupts then.
> 
> Okay, thanks for the explanation.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks for reviewing this Rob.

-- 
viresh
