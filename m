Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50D8938AFCF
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 15:21:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234697AbhETNWY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 09:22:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236204AbhETNWU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 09:22:20 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69E04C061574
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 06:20:58 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id y14so15571050wrm.13
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 06:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hrt4rXbdgKZiXCgVRf8MpghHthsSrMiTOwxhkdmcdTQ=;
        b=nLGDj7iwxrQWE6tK8pSces4KzEl4qc8H4g5A4B01oWH6xOcUEP4v7D8J5w/Se5xq3Q
         p+uHiNwR8rD7cJH+9w0/I6dl1sDDDeWVuzlqF3p5T43CDw7uL8IXLDTVxyiLVEXC5R4K
         K7G94l3O0iuikaoh23UJPd1OJAHKsWrYmvMtjfVSTjZ3/IO2TYl+QP4BGaQRVz5TGKJY
         AzTdSLT30/Q8kTA+XyvBVBMLczEPz52gE6mQ+FqZJ5u4oVeq3kG1WOYX6Bb2niXEu4HA
         SZzWWHiOswHsvGdnTdzkIbnjx4IT3iZ/F6AJ8OhJ7ExDRn0oKPo+DkjCGO5Pm4leor2v
         rFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hrt4rXbdgKZiXCgVRf8MpghHthsSrMiTOwxhkdmcdTQ=;
        b=avSz5xkV+Po0XORvV0vDwc3I7UQfA+9q6TUiCRRDgD8KKvupzlJkHkvUw57OUxMIcJ
         HKGLZ8VZtISCoAOog6iTw5v9Fl4dEj4bgzQM+JH+HBKK8XJTlk/nyiD6yxlBEaAiCXfJ
         nt+OmPyEacfUaULDq7cu0hYaLEdfs9p2KfL1K5Bug7/yZXTsBk8dF1r39Qed6J/9bJcP
         gD3/C0vdvXZDWgZWzeBy0cw0Dwnb4QUp8xYshmgTOwyu4+gRNlTf1Hq7ilXylZ2W+nPd
         TBTLUZZXckrXRdGwJWQHtGpnCosZTXdJqzHiWJc41QxOxZhlSvNewUuepuv7cbGCPMyq
         pwpg==
X-Gm-Message-State: AOAM531aMJoDzg5vUdbdP4xsdtmznTUAfVs56j4yXTjZ7yK6y2kppHJ6
        2IyCM8nGCoQuV/RD534eEjyXcfLMXJLMgZJPeFxVnw==
X-Google-Smtp-Source: ABdhPJz1c4OCAGvBQbwVKk+zWE94i+Fc3/ecwkVVarWRKDvIshxSZcvA2uuEY7eNIzRCFguGdVu2xPy+W240MxFZF+0=
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr4169832wrj.43.1621516856958;
 Thu, 20 May 2021 06:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210505093843.3308691-1-sudeep.holla@arm.com>
In-Reply-To: <20210505093843.3308691-1-sudeep.holla@arm.com>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Thu, 20 May 2021 15:20:46 +0200
Message-ID: <CAHUa44Fk_u9tFp=C6FdUhYeSZ-wAcmAaEqx9j=eJXtxD10G=Ug@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] firmware: Add initial support for Arm FF-A
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>, arve@google.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 5, 2021 at 11:38 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Hi all,
>
> This is very basic implementation for in-kernel support for Arm FF-A
> specification.
>
> Arm Firmware Framework for Armv8-A specification[1] describes a software
> architecture that provides mechanism to utilise the virtualization
> extension to isolate software images and describes interfaces that
> standardize communication between the various software images. This
> includes communication between images in the Secure and Normal world.
>
> The main idea here is to create FFA device to establish any communication
> with a secure partition. This is currently tested with OPTEE(with changes
> to OPTEE driver adding FFA as transport)
>
> The series can be fetched from [2]
>
> --
> Regards,
> Sudeep
>
> [1] https://developer.arm.com/documentation/den0077/latest
> [2] git://git.kerniel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git v5.13/ffa

Tested OK with my OP-TEE driver patches on top of 755e78187c4e
("firmware: arm_ffa: Add support for MEM_* interfaces"), which is the
latest on the v5.13/ffa branch above.

Tested-by: Jens Wiklander <jens.wiklander@linaro.org>

Cheers,
Jens


>
>
> v5->v6:
>         - Dropped DT dependecy completely and use the discovery APIs for
>           adding FFA partitions on the bus. They is some workaround added
>           as v1.0 doesn't provide UUID as part of the discovery APIs which
>           is used to match the devices and driver on FFA bus.
>         - Extended SMCCC v1.2 API to support full set of input and output
>           registers.
>         - Couple of minor bug fixes found as part of testing
>
> v4->v5:
>         - Fixed couple of comments in DT bindings
>         - Moved to use native version of RXTX_MAP call, fixed vm_id param
>           to RXTX_UNMAP, dropped couple of unused confusingly named macros
>           (can be added back with correct name when we need to use them)
>
> v3->v4:
>         - Added support to allow partitions to set 32bit only mode
>         - Addressed all the comments from Jens Wiklander
>
> v2->v3:
>         - Dropped hypervisor partitions and userspace support as it is
>           no longer in the list of requirements
>         - Moved away from ioctl style interface for in-kernel users as
>           there is no need to keep in sync with userspace anymore
>         - Some kerneldoc fixes as pointed out in earlier reviews
>
> v1->v2:
>         - Moved userspace code to a separate unit, will move to separate
>           module. Still working on minimizing initcall dependencies and
>           exported functions to reuse some of the code.
>         - Fixed couple of minor issues pointed out
>         - Dropped ASYNC send message as I haven't been able to test
>
> Sudeep Holla (6):
>   arm64: smccc: Add support for SMCCCv1.2 extended input/output registers
>   firmware: arm_ffa: Add initial FFA bus support for device enumeration
>   firmware: arm_ffa: Add initial Arm FFA driver support
>   firmware: arm_ffa: Add support for SMCCC as transport to FFA driver
>   firmware: arm_ffa: Setup in-kernel users of FFA partitions
>   firmware: arm_ffa: Add support for MEM_* interfaces
>
>  MAINTAINERS                       |   7 +
>  arch/arm64/kernel/asm-offsets.c   |   9 +
>  arch/arm64/kernel/smccc-call.S    |  57 +++
>  drivers/firmware/Kconfig          |   1 +
>  drivers/firmware/Makefile         |   1 +
>  drivers/firmware/arm_ffa/Kconfig  |  21 +
>  drivers/firmware/arm_ffa/Makefile |   6 +
>  drivers/firmware/arm_ffa/bus.c    | 210 +++++++++
>  drivers/firmware/arm_ffa/common.h |  31 ++
>  drivers/firmware/arm_ffa/driver.c | 719 ++++++++++++++++++++++++++++++
>  drivers/firmware/arm_ffa/smccc.c  |  39 ++
>  include/linux/arm-smccc.h         |  55 +++
>  include/linux/arm_ffa.h           | 266 +++++++++++
>  13 files changed, 1422 insertions(+)
>  create mode 100644 drivers/firmware/arm_ffa/Kconfig
>  create mode 100644 drivers/firmware/arm_ffa/Makefile
>  create mode 100644 drivers/firmware/arm_ffa/bus.c
>  create mode 100644 drivers/firmware/arm_ffa/common.h
>  create mode 100644 drivers/firmware/arm_ffa/driver.c
>  create mode 100644 drivers/firmware/arm_ffa/smccc.c
>  create mode 100644 include/linux/arm_ffa.h
>
> --
> 2.25.1
>
