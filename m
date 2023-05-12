Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DD02700E50
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 20:02:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238458AbjELSB5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 14:01:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238363AbjELSBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 14:01:51 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FC62E739
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 11:01:11 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-644d9bf05b7so5504643b3a.3
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 11:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1683914470; x=1686506470;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZurY8vXHDcFG3lomnuGwa9Th7nV7j2iw6HUr38gODtk=;
        b=vHtt9ci3St04ZZOr+gEQeSEy5mhq/rhRTOtX1T+kzcpHlWCA1+iz3BbuqhirFsg6ii
         sMyn0569tAFh8JcyBd+2/DtbLGukQA8IlJCS4ryQsPIOU37FRTfo3lgakMNH73p4bc8/
         yexLh648aEWrLVgaLjZw67933/rzGOsLX+85cgTpwjCxvfnnMhyMwKKPElMpce5G5LZA
         8tCcKvmRjA0dQy4oRkXC+UdFMEP50EVICLxkjLhS7gvjXZJaDosbBR3fbASokRqNKhyq
         5HFLpF5xuTlFr6DjndV/MNlcP33p/+Xnr64VUfKVNrkdWPfkZ8PHIIYzSAVWEYZNdpIE
         gbrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683914470; x=1686506470;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZurY8vXHDcFG3lomnuGwa9Th7nV7j2iw6HUr38gODtk=;
        b=S/r/KmX3dRjCO0Jba10OHvjp7DMkPDy0zV39volmAVlSNzSJChJyd7v2BwAHxobwjo
         nnAVEqiKDqKzSIZxOZK5ucFEktQ+3ABvYh+Xy2ZHChXw+xX8ztaxX7v9xNr+u6QAj8XE
         HzgNsEAIhyoIA0b9N9AglsupkYt7mIWRPgDlKZ8mOYcuLFDqL+UiNHFJvLwIyD6hb0Ck
         iIsQPonw5RrIbDQEJHK96N6Sur8PAwZI10a76i/8GXfd+okHEFzmgwTKkn+R+IibFbd8
         0znx38fLxDgtsVrV3X1aOi86GlLcbNPfCMLNX4h8wze9OMutR9dmGCS13bDguaGz0b0V
         sj4Q==
X-Gm-Message-State: AC+VfDwgKb17mP7hxTF+VDwqnMiuVULFOP43eNBU5eNM+Mk8Hw0wUz5g
        flgcT3aedGzZzVxfjRYNpeAbYBRIoCoaChtDF3I=
X-Google-Smtp-Source: ACHHUZ4x/uTDoBzCxhcEAXA3BDv/D1kaN3kWBr/+lTwvIhR3aqC3/Tj/Huyp9tYh3KnzW7JLYBgsBQ==
X-Received: by 2002:a17:903:11c4:b0:1a9:7365:fc2a with SMTP id q4-20020a17090311c400b001a97365fc2amr33226999plh.26.1683914470398;
        Fri, 12 May 2023 11:01:10 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id l5-20020a17090270c500b001a641ea111fsm8237394plt.112.2023.05.12.11.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 11:01:09 -0700 (PDT)
Date:   Fri, 12 May 2023 11:01:09 -0700 (PDT)
X-Google-Original-Date: Fri, 12 May 2023 11:00:49 PDT (-0700)
Subject:     Re: [RFC 0/6] Deprecate riscv,isa DT property?
In-Reply-To: <20230511-occupancy-cleat-06e532e3ea11@spud>
CC:     atishp@atishpatra.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de,
        cyy@cyyself.name, Conor Dooley <conor.dooley@microchip.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        ajones@ventanamicro.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Conor Dooley <conor@kernel.org>
Message-ID: <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 May 2023 15:38:10 PDT (-0700), Conor Dooley wrote:
> On Thu, May 11, 2023 at 03:34:24PM -0700, Atish Patra wrote:
>> On Thu, May 11, 2023 at 2:47 PM Conor Dooley <conor@kernel.org> wrote:
>> > On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:
>
>> > That's more than last year at this point, and nothing has changed in the
>> > documentation! Talk's cheap, ehh?
>> >
>> 
>> Yup. I will poke RVI folks to check if it still is the plan or changed !!
>
> Sounds good, thanks!
>
>> We will likely have a vendor specific string parsing logic.
>
> Complicating the parsing logic is the exact sort of crap that I want
> to avoid.

Ya, I think we're reallly overcomplicating things with the ISA strings.  
Let's just deprecate them and move to something that doesn't need all 
the bespoke string parsing.
