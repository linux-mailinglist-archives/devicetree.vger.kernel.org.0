Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ABDF774F54
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 01:32:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230357AbjHHXcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 19:32:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230351AbjHHXcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 19:32:10 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20CFB2108
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 16:31:56 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-40c72caec5cso72931cf.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 16:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1691537515; x=1692142315;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ybrZnDbgYV2MwIPZtu+U0IzC9LJv7CzD1PxMpELINSU=;
        b=aMwJXFbrvKiYplgT0ZoUattM4tCbFAQNM7l8wXmr5y/wPARKhQyMWR4mSHh6e/eFZJ
         qY9HGaUw1Lix/yNrm/HZozusP33qwdsvaPQvUJviG6hJW/CAwF5GsVBHkLd8VwKeDn0e
         a3zKyx4ajzDUSk4TQbTMev2hmQn8KPbs+AepcU6BXdMPImJG7naUoGFgkyrQYf6+8qSY
         g2jPHEhWGXB0g1TMj39NMngTxNgj41jWymb48XnIgnTA8gLOvXbqW4cRKn/6N6BhjReG
         OmGqHeXL6IoJJFfAJDXluOr8jGNcuIsQH8M4wVl6S2muVNRyQ7mBesn5MM7K6KtK/1in
         JDHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691537515; x=1692142315;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ybrZnDbgYV2MwIPZtu+U0IzC9LJv7CzD1PxMpELINSU=;
        b=lLMOHmVahYci3j8VxwLiFKs05ZM3TZtVI8xVn3s0+SworTdwtMGjvzRADUEz0I/vCj
         tuSZdn6OCIeEjhLZ4GXKZIOSv8BXUi8UkwVd37PqrrlMNCVB93Y2wIHUm2/z94ylI18y
         tMF87Lvj7EhcF4ClQRHcxlCzJF4pgI4gH4q3NwxaIbidRSgCOjwCxFpHNle/sCophpPc
         9X9ri3IzpiTZUWmWEe4SoVjnYk7cQNsZF4A3V2GWm90oE5evm2Coqp/smwFCgtdgILFW
         5wMDQisg5EIDloO9pSFIsAQ4cFS9y7y1Qx5L3kbp9FA+RaJunoX3Wh+v7lj6ag/ANAYH
         p5UQ==
X-Gm-Message-State: AOJu0Yx2CN5rMbdMyl0iwABeotEEuV9HrN2ikgCSGkVd/je8vycfwcmh
        nhgiE37LufSb/clMI13WotrhKaH0mMJHrFClnnZ8QA==
X-Google-Smtp-Source: AGHT+IE3HFEO5vKi/0lwOHdK9wAp8WPSQYfPR4qt7ldmyBDY+4f0MgynMuUSvoXIw3ezFbZhIvyVjS2MxmHNXC/JxPs=
X-Received: by 2002:ac8:5c09:0:b0:3f8:5b2:aef0 with SMTP id
 i9-20020ac85c09000000b003f805b2aef0mr116002qti.24.1691537515078; Tue, 08 Aug
 2023 16:31:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230731174613.4133167-1-davidai@google.com> <20230731174613.4133167-2-davidai@google.com>
 <ceddbbfb-a178-2b7e-ea17-0a37f33224ab@linaro.org>
In-Reply-To: <ceddbbfb-a178-2b7e-ea17-0a37f33224ab@linaro.org>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 8 Aug 2023 16:31:19 -0700
Message-ID: <CAGETcx-uKF_9Gw2UUXeSrY0C9sH-9dX_Waggp7tjCfBB_+dfKA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: cpufreq: add bindings for virtual cpufreq
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     David Dai <davidai@google.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Quentin Perret <qperret@google.com>,
        Masami Hiramatsu <mhiramat@google.com>,
        Will Deacon <will@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Dietmar Eggemann <dietmar.eggemann@arm.com>,
        Pavan Kondeti <quic_pkondeti@quicinc.com>,
        Gupta Pankaj <pankaj.gupta@amd.com>,
        Mel Gorman <mgorman@suse.de>, kernel-team@android.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 5, 2023 at 12:38=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 31/07/2023 19:46, David Dai wrote:
> > Adding bindings to represent a virtual cpufreq device.
> >
> > Virtual machines may expose MMIO regions for a virtual cpufreq device f=
or
> > guests to read frequency information or to request frequency selection.=
 The
> > virtual cpufreq device has an individual controller for each CPU.
>
> A nit, subject: drop second/last, redundant "bindings for". The
> "dt-bindings" prefix is already stating that these are bindings.
>
> >
> > Co-developed-by: Saravana Kannan <saravanak@google.com>
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > Signed-off-by: David Dai <davidai@google.com>
> > ---
> >  .../bindings/cpufreq/cpufreq-virtual.yaml     | 89 +++++++++++++++++++
> >  1 file changed, 89 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/cpufreq/cpufreq-v=
irtual.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-virtual.=
yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-virtual.yaml
> > new file mode 100644
> > index 000000000000..f377cfc972ca
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-virtual.yaml
> > @@ -0,0 +1,89 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/cpufreq/cpufreq-virtual.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yamll#
> > +
> > +title: Virtual CPUFreq
> > +
> > +maintainers:
> > +  - David Dai <davidai@google.com>
> > +  - Saravana Kannan <saravanak@google.com>
> > +
> > +description:
> > +  Virtual CPUFreq is a virtualized driver in guest kernels that sends =
frequency
> > +  selection of its vCPUs as a hint to the host through MMIO regions. T=
he host
> > +  uses the hint to schedule vCPU threads and select physical CPU frequ=
ency. It
> > +  enables accurate Per-Entity Load Tracking for tasks running in the g=
uest by
> > +  querying host CPU frequency unless a virtualized FIE (ex. AMU) exist=
s.
>
> Why do you need DT for this? You control hypervisor, thus control the
> interface to the guest. I think Rob made it pretty clear that
> discoverable usecases (which is yours) are not for DT.
>
> Incomplete style-review follows:
>
> > +
> > +properties:
> > +  compatible:
> > +    const: virtual,cpufreq
>
> Missing blank line.
>
> > +  reg:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    cpus {
> > +      #address-cells =3D <1>;
> > +      #size-cells =3D <0>;
> > +
> > +      cpu@0 {
> > +        compatible =3D "arm,arm-v8";
> > +        device_type =3D "cpu";
> > +        reg =3D <0x0>;
> > +        operating-points-v2 =3D <&opp_table0>;
> > +      };
> > +
> > +      cpu@1 {
> > +        compatible =3D "arm,arm-v8";
> > +        device_type =3D "cpu";
> > +        reg =3D <0x0>;
> > +        operating-points-v2 =3D <&opp_table1>;
> > +      };
> > +    };
> > +
> > +    opp_table0: opp-table-0 {
> > +      compatible =3D "operating-points-v2";
> > +
> > +      opp1098000000 {
> > +        opp-hz =3D /bits/ 64 <1098000000>;
> > +        opp-level =3D <1>;
> > +      };
> > +
> > +      opp1197000000 {
> > +        opp-hz =3D /bits/ 64 <1197000000>;
> > +        opp-level =3D <2>;
> > +      };
> > +    };
> > +
> > +    opp_table1: opp-table-1 {
> > +      compatible =3D "operating-points-v2";
> > +
> > +      opp1106000000 {
> > +        opp-hz =3D /bits/ 64 <1106000000>;
> > +        opp-level =3D <1>;
> > +      };
> > +
> > +      opp1277000000 {
> > +        opp-hz =3D /bits/ 64 <1277000000>;
> > +        opp-level =3D <2>;
> > +      };
> > +    };
> > +
> > +    soc {
> > +      #address-cells =3D <1>;
> > +      #size-cells =3D <1>;
> > +
> > +      cpufreq {
>
> Missing unit address
>
> > +        reg =3D <0x1040000 0x10>;
> > +        compatible =3D "virtual,cpufreq";
>
> compatible is always the first property.
>
> Also, you did not test it...

Why do you say this? This patch series was obviously tested very well
with all the data we collected.

-Saravana
