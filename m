Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8D95728681
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 19:44:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234676AbjFHRod (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 13:44:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbjFHRoc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 13:44:32 -0400
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 935DD2D46
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 10:44:22 -0700 (PDT)
Received: by mail-io1-xd34.google.com with SMTP id ca18e2360f4ac-77797beb42dso43601539f.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 10:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686246260; x=1688838260;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ioc3PMTHThn4DBw80/q6Z7SBMJ2IWtRiI0d7gZlh7mA=;
        b=KaVd2qkKYKzLQlBo29pMLCEun3YzvWEJdiHcLPVSiU0Qs6Xs0ftFtL7iWs1hv+kNna
         xm780xKSbOsLM/RD2vOpsFDYRuxJJphOGATa6Q/+MdjWkzBRZWN1N/ulhcmPSd+CjaUd
         vJYDuE9/u7YEzNw+voCRI4E74kqlJvid4HnSM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686246260; x=1688838260;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ioc3PMTHThn4DBw80/q6Z7SBMJ2IWtRiI0d7gZlh7mA=;
        b=ZkD5GqDhgQQPoGRUBBz9HDM8QzT1NxBQrLh4KZeBx3cxkPJryspPqzdYHTzRBoN5kQ
         wbt0qpoIILwBM/0dWeXHxJqCyeaak44RQ4m0fLseB/ayi92m5+IFwTb6u9/2uaZjk+wD
         Z+U7xcFAUSwOuwZtAHVOEm4v6JS3SQKk3fLlnBoUYtZSOZ2Qk3FdpjZQULI8dojo8An8
         waslvKuzeae56YZImlzEpVa+O+enSdPDACbXLDLChi4jJ7cSN+EhLw8fgg78/QsgbGFl
         26a8Aq1Br1Pm/eDkQ26wY63W/PxNWAfpyIPsIzAXgjsXVaFdQQYAp2yGp980ktbHBcFw
         Kb9g==
X-Gm-Message-State: AC+VfDxfM2O3G+iLTaeoCcmY2lzy60Q8ATHlYI6oVO2tpsuzvCDo4SNr
        PLlje7zHWMlEH3KMAHfVYf0tliW61ercOxM28tA=
X-Google-Smtp-Source: ACHHUZ6umdQDfBed5RY44iWcqNgLI6bJjNxek/SbskJUYJjNt56DEVDn7p4tlgMSm9nI34Dwrzwnvg==
X-Received: by 2002:a5e:8808:0:b0:77a:bc11:b65e with SMTP id l8-20020a5e8808000000b0077abc11b65emr7449296ioj.9.1686246260490;
        Thu, 08 Jun 2023 10:44:20 -0700 (PDT)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com. [209.85.166.170])
        by smtp.gmail.com with ESMTPSA id a18-20020a02ac12000000b0041659b1e2afsm422480jao.14.2023.06.08.10.44.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 10:44:19 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-33d928a268eso151615ab.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 10:44:19 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a0c:b0:328:3a25:4f2e with SMTP id
 s12-20020a056e021a0c00b003283a254f2emr153033ild.9.1686246258975; Thu, 08 Jun
 2023 10:44:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230602161246.1855448-1-amit.pundir@linaro.org>
 <CAD=FV=U9xwxC4+wDYFMSoLWaj8vaLH_jettZ=nxEZP+1tNk=oA@mail.gmail.com>
 <d0dfdfba-7a70-7d12-2c30-ad32b3f95bb8@linaro.org> <CAMi1Hd1Upo8zV4MPtdqHgEaMQ72yK0gZgf5Z4uOaqKqhw8Hndg@mail.gmail.com>
 <55f07600-3fa5-f3c2-eb3e-e87a57244812@linaro.org> <CAMi1Hd0qRrRw3_U7kqz-8BJnwJR1RqweajBWrZWWDGmtqVMDAQ@mail.gmail.com>
In-Reply-To: <CAMi1Hd0qRrRw3_U7kqz-8BJnwJR1RqweajBWrZWWDGmtqVMDAQ@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 8 Jun 2023 10:44:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W+SMsr=TCJtbimq0U94gcoucMLSwA6adCKwn3y+qxLZA@mail.gmail.com>
Message-ID: <CAD=FV=W+SMsr=TCJtbimq0U94gcoucMLSwA6adCKwn3y+qxLZA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-db845c: Move LVS regulator nodes up
To:     Amit Pundir <amit.pundir@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        regressions <regressions@lists.linux.dev>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 8, 2023 at 10:27=E2=80=AFAM Amit Pundir <amit.pundir@linaro.org=
> wrote:
>
> On Wed, 7 Jun 2023 at 15:46, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> >
> > The problem looks like in missing consumers, missing probe dependencies
> > or something in the driver how it handles these.
>
> Missing consumers seem to be the case here, if I'm reading the
> $debugfs/regulator/regulator_summary correctly(?)
> https://www.irccloud.com/pastebin/raw/2jwn0EQw.
> lvs1 and lvs2 sysfs entries in /sys/class/regulator/ do not list any
> consumers explicitly either.

They are marked as always-on regulators, though. The lack of an
explicit consumer in device tree shouldn't really matter. I don't
think this is the source of your problem.

-Doug
