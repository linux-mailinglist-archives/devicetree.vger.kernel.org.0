Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11FF36B037E
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 10:58:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbjCHJ6G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 04:58:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229948AbjCHJ6C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 04:58:02 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C28E359ED
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 01:57:55 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id me6-20020a17090b17c600b0023816b0c7ceso1730893pjb.2
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 01:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678269475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=szwudWjVCqo4cXsa2hswtbiIZUYiHlCdLL/iW8bEO1U=;
        b=WG/vcp/z8JCrNYARIQWbnJKgXCe6jPX3ROGsNRDLqCrY+q+mNYVRwOh93r4NysSCur
         /i+yf9ksMbImlbkysEN61FGLUHU7RGy6o2u34kaCY8EIMqiS5WzywSiQIeIzJv7CfQbM
         h8TVdpOZLxx8HHMtXNelXJr2sIs9WefCMrZZpjTmis29dTmmNlpZ05ChnJXWmuV0p9SO
         OpWQmb9cMzaLb3SWAUDSevU4CaBQZ3/OeQJXZKyx5scQZhYrIR5SglKORy4vHvbeBBMB
         /uL8TfPp2c55ga+2tV3uymzU28OGNb642Y/23NCmaTS1zPUCpTKwZMEwGu1SVCPiClif
         kP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678269475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=szwudWjVCqo4cXsa2hswtbiIZUYiHlCdLL/iW8bEO1U=;
        b=cNcogJomhsqJgpul31GI8m7SDSNXxhBwTJTnno+qV9jwwtQDgL4Y5KAgenbNnWbh+s
         S984KeejIahTxEh71Ej5qF+4nRkfG8rbAIBjQb4c6yo5eIahCWBjdUN0gAtVfsNmdolF
         oTUm4pQYNF2SybNxkKkDDkqfSVx0HoPJhAYfgw+iPdG1P3vp8RSKl0Evme+mgFktQCUq
         c+0ITc+tos1EqgxY027GEwRHWfkI2z3XLxBUnPolIsEvflP+Sv0tNqAQDG4I+184+EVW
         +j4phTzjUxZ2e7QfhIW4N5z6fMGIZfSjBcxRYOGKDXDMBUYseYJwQm2/0Vh6ji1exsrX
         7vcw==
X-Gm-Message-State: AO0yUKUQ36XtkWtlUmDs5tcVe2XnGJJkukNqZHhtP0wvlKg0H8BzXf1i
        ObWYpjEMMWibh5AcKFCimSVFU16DwZMhW0aBdMA7YQ==
X-Google-Smtp-Source: AK7set9iLU2oX6cC5DQYkh/uXudtH93SfREwiK9iB3b07Pi9mxKR2D/1nKL3giDRGz4X8ROvT9TUtfpXGSenG+wXMpM=
X-Received: by 2002:a17:902:efcf:b0:19c:3296:ecdc with SMTP id
 ja15-20020a170902efcf00b0019c3296ecdcmr6813306plb.1.1678269475249; Wed, 08
 Mar 2023 01:57:55 -0800 (PST)
MIME-Version: 1.0
References: <20230308011705.291337-1-konrad.dybcio@linaro.org>
In-Reply-To: <20230308011705.291337-1-konrad.dybcio@linaro.org>
From:   Shawn Guo <shawn.guo@linaro.org>
Date:   Wed, 8 Mar 2023 17:57:43 +0800
Message-ID: <CAAQ0ZWQDfZBcQuuVOjUWd1s=uTwXyj6qvQCw6=1qbywd2XcnVQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Allow #power-domain-cells
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, marijn.suijten@somainline.org,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 8, 2023 at 9:17=E2=80=AFAM Konrad Dybcio <konrad.dybcio@linaro.=
org> wrote:
>
> MPM provides a single genpd. Allow #power-domain-cells =3D <0>.
>
> Fixes: 54fc9851c0e0 ("dt-bindings: interrupt-controller: Add Qualcomm MPM=
 support")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Acked-by: Shawn Guo <shawn.guo@linaro.org>
