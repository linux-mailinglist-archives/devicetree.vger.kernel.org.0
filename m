Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6F312C751A
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:23:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387761AbgK1Vt2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725989AbgK1SW6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Nov 2020 13:22:58 -0500
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6387C02A18A
        for <devicetree@vger.kernel.org>; Sat, 28 Nov 2020 04:25:06 -0800 (PST)
Received: by mail-lj1-x242.google.com with SMTP id i17so9064064ljd.3
        for <devicetree@vger.kernel.org>; Sat, 28 Nov 2020 04:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PYgQnFYgqUddsNplUpnQ4HvBK/TKAevGLbAhKiY2Sqc=;
        b=fIMIGrnMtMGMEQHKUg84oqutRK7An0A4QoghvTjaNXNAHu7IsPMzqKYeQhmZboXDzx
         qQeqDC1U+k4iI3d7AWDKdOWJiIFamQMdsVmZsl4gKDDRq0i+jlI8C4Fwy/7b2oMszEdS
         qdcTC5oxaSBXyAup0bm7F1mZ67s2RhL89iM/bf7Cf7L+4U0sK2MT1yLst3NKUcNPzTj6
         VEMobKzhttO5DxKgO/Ltyzwbd8t5UfC92/w5dzLqBYxCzfxtISEof+9hd8oQzCXcyrPQ
         Ja125i5V6Ht+IpAD3hoXhWDOBmgqXvfqUKPyY/xXYsF0z3PGmvcngJ579HKFB2ZkcHDQ
         Kz+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PYgQnFYgqUddsNplUpnQ4HvBK/TKAevGLbAhKiY2Sqc=;
        b=dh4BL7sjyyii7AI8LgaKcGJt8kYgU+wmi7k+YqOPo+uPcMwuJrCUFE3RKu8AIbwn22
         a0OeaJKIvRlpmP7bukgOxZaZr5JBZI0Uzhg9JlOoUy7OuzhQ6H2hXWc/ayQpLgj70r0k
         SQ0iNk7ptpVmrv0cm13b8LR8j5BKQd7q/OWI4UPU4qyb9EjO8o4VPmXr7C2VfEY6l56E
         pvAiVz3QhErMW/EY+v2jhZjz3N8cKOIq2fpe5+ld8jRmevf8ehL//eQMbCz0cYYIhZFp
         JOjHWLgNjVasWhq9I/jczVWygPh8EKJdiTHDFzcJhodoMe3CD9GxWzW22HtXLHSoiMuk
         UrCw==
X-Gm-Message-State: AOAM532tX6GhFOsOrupc6i2fB3x9GeuVTTElnHfHjUhdSkS+VJvpQxRb
        6AlBbo/0I8TdxqI7NNOEgHMCPMVGSOSRllAy
X-Google-Smtp-Source: ABdhPJzRKZv6BWNPJR4vg7a2vtSAmL9dIGprulpJaUGZoeRquRv8tvUhN3N6eQT+f1s8ji97RQm7HQ==
X-Received: by 2002:a2e:2a86:: with SMTP id q128mr5357135ljq.158.1606566305424;
        Sat, 28 Nov 2020 04:25:05 -0800 (PST)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
        by smtp.gmail.com with ESMTPSA id u25sm1315496lji.6.2020.11.28.04.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Nov 2020 04:25:04 -0800 (PST)
Date:   Sat, 28 Nov 2020 13:25:02 +0100
From:   Jens Wiklander <jens.wiklander@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>,
        Trilok Soni <tsoni@quicinc.com>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Android Kernel Team <kernel-team@android.com>,
        Fuad Tabba <tabba@google.com>
Subject: Re: [PATCH v2 0/9] firmware: Add initial support for Arm FF-A
Message-ID: <20201128122502.GA8649@jade>
References: <20201103174350.991593-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20201103174350.991593-1-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sudeep,

On Tue, Nov 03, 2020 at 05:43:41PM +0000, Sudeep Holla wrote:
> Hi all,
> 
> Let me start stating this is just initial implementation to check on
> the idea of providing more in-kernel and userspace support. Lot of things
> are still work in progress, I am posting just to get the early feedback
> before building lot of things on this idea. Consider this more as RFC
> though not tagged explicity(just to avoid it being ignored :))
> 
> Arm Firmware Framework for Armv8-A specification[1] describes a software
> architecture that provides mechanism to utilise the virtualization
> extension to isolate software images and describes interfaces that
> standardize communication between the various software images. This
> includes communication between images in the Secure and Normal world.
> 
> The main idea here is to create FFA device to establish any communication
> with a partition(secure or normal world VM).
> 
> If it is a partition managed by hypervisor, then we will register chardev
> associated with each of those partition FFA device.
> 
> /dev/arm_ffa:
> 
> e3a48fa5-dc54-4a8b-898b-bdc4dfeeb7b8
> 49f65057-d002-4ae2-b4ee-d31c7940a13d
> 
> For in-kernel usage(mostly communication with secure partitions), only
> in-kernel APIs are accessible(no userspace). There may be a need to
> provide userspace access instead of in-kernel, it is not yet support
> in this series as we need way to identify those and I am not sure if
> that belong to DT.

With unfiltered VM to VM commnication from user space there's no easy
way for two VMs to exchange privileged information that excludes user
space. Perhaps access to the FFA device is considered privileged and
enough for all purposes.

If I've understood it correctly is VM to SP communication only allowed
via kernel mode in the VM. The communication with OP-TEE depends on this
with the recent commit c5b4312bea5d ("tee: optee: Add support for session
login client UUID generation").

Cheers,
Jens
